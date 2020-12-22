#include "../types/typedef.h"
#include "mux.h"
#include "config.h"
#include <SPI.h>

uint8_t leds0[NUM_LEDS / 8]; // each set of brightness
uint8_t leds1[NUM_LEDS / 8]; // each set of brightness
uint8_t leds2[NUM_LEDS / 8]; // each set of brightness
uint8_t leds3[NUM_LEDS / 8]; // each set of brightness
uint8_t leds4[NUM_LEDS / 8]; // each set of brightness

#if USING_SAMD
#define SAMD_TIMER_INTERRUPT_DEBUG 0
#include "SAMDTimerInterrupt.h"
#if !( defined(ARDUINO_SAMD_ZERO) || defined(ARDUINO_SAMD_MKR1000) || defined(ARDUINO_SAMD_MKRWIFI1010) \
    || defined(ARDUINO_SAMD_NANO_33_IOT) || defined(ARDUINO_SAMD_MKRFox1200) || defined(ARDUINO_SAMD_MKRWAN1300) || defined(ARDUINO_SAMD_MKRWAN1310) \
    || defined(ARDUINO_SAMD_MKRGSM1400) || defined(ARDUINO_SAMD_MKRNB1500) || defined(ARDUINO_SAMD_MKRVIDOR4000) || defined(__SAMD21G18A__) \
    || defined(ARDUINO_SAMD_CIRCUITPLAYGROUND_EXPRESS) || defined(__SAMD21E18A__) || defined(__SAMD51__) || defined(__SAMD51J20A__) || defined(__SAMD51J19A__) \
    || defined(__SAMD51G19A__) || defined(__SAMD51P19A__) || defined(__SAMD21G18A__) )
  #error This code is designed to run on SAMD21/SAMD51 platform! Please check your Tools->Board setting.
#endif
SAMDTimer samd_timer0(TIMER_TC3);
#endif

#if USING_SAMD
void TimerHandler0(void) {
#else 
ISR(TIMER1_COMPA_vect){
#endif
    static uint8_t layer = 0;
    static uint8_t it = 1;
    digitalWrite(BLANK_PIN, 1);//The first thing we do is turn all of the LEDs OFF, by writing a 1 to the blank pin
#if ENABLE_SPI
    SPI.transfer(0x01 << layer);
#else
    shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST, 0x01 << layer);
#endif
    // 8 / 15
    if (it > 15) { // 8, 9, 10, 11, 12, 13, 14, 15
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++) {
#if ENABLE_SPI
            SPI.transfer(leds4[i]);
#else
            shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds3[i]);
#endif
        }
    }
    else if (it > 7) { // 8, 9, 10, 11, 12, 13, 14, 15
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++) {
#if ENABLE_SPI
            SPI.transfer(leds3[i]);
#else
            shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds3[i]);
#endif
        }
    }
    // 4 / 15
    else if (it > 3) { // 4, 5, 6, 7
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++) {
#if ENABLE_SPI
            SPI.transfer(leds2[i]);
#else
            shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds2[i]);
#endif
        }
    }
    // 2 / 15
    else if (it > 1) { // 2, 3
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++) {
#if ENABLE_SPI
            SPI.transfer(leds1[i]);
#else
            shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds1[i]);
#endif
        }
    }
    else { // 1
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++) {
#if ENABLE_SPI
            SPI.transfer(leds0[i]);
#else
            shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds0[i]);
#endif
        }
    }

    it++;
    layer++;
    if (it == 32) {
        it = 1;
    }

    if (layer == NUM_LEDS_SINGLE_AXIS) {
        layer = 0;
    }

    digitalWrite(LATCH_PIN, 1);//Latch pin HIGH
    digitalWrite(LATCH_PIN, 0);//Latch pin LOW
    digitalWrite(BLANK_PIN, 0);//blank pin LOW
}

/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void mux_init() 
{
    pinMode(BUTTON_CLOCK, OUTPUT);
    pinMode(BUTTONS_DATA, OUTPUT);
    pinMode(BUTTONS_LATCH, OUTPUT);
    pinMode(BUTTON_WATCH, INPUT);
    pinMode(A7, INPUT);
    noInterrupts();
#if ENABLE_DEBUG
#endif
#if USING_SAMD
  samd_timer0.attachInterruptInterval(250, TimerHandler0);
#else
    TCCR1A = B00000000;
    TCCR1B = B00001011; // CTC mode
    TIMSK1 = B00000010; // OCR1A
    // OCR1A=10000; // long time
    OCR1A=25; // short time
#endif
    pinMode(LATCH_PIN, OUTPUT);//Latch
    pinMode(DATA_PIN, OUTPUT);//MOSI DATA
    pinMode(CLOCK_PIN, OUTPUT);//SPI Clock
    pinMode(10, OUTPUT);//SPI Clock
    pinMode(BLANK_PIN, OUTPUT);//blank
    for (int i = 0; i < NUM_LEDS / 8; i++) {
        leds0[i] = 0;
        leds1[i] = 0;
        leds2[i] = 0;
        leds3[i] = 0;
        leds4[i] = 0;
    }
#if ENABLE_SPI
    SPI.begin(); //start up the SPI library
    SPI.setBitOrder(MSBFIRST); //Most Significant Bit First
    SPI.setDataMode(SPI_MODE0); // Mode 0 Rising edge of data, keep clock low
    SPI.setClockDivider(SPI_CLOCK_DIV2); //Run the data in at 16MHz/2 - 8MHz
    digitalWrite(SS,LOW);
#endif
    interrupts();
}