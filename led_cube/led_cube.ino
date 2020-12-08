// #include "./src/setup/mux.h"
#include "./src/types/typedef.h"
#include "./src/base/basic_functions.h"
#include <SPI.h>
// extern uint8_t px_buf[NUM_LEDS / 2];
#define LATCH_PIN 5
#define CLOCK_PIN 13
#define DATA_PIN 11 

#define USING_SAMD 0

#define blank_pin 4// same, can use any pin you want for this, just make sure you pull up via a 1k to 5V
#define ENABLE_DEBUG 1

#define NUM_LEDS 64
#define NUM_LEDS_LAYER 16
#define NUM_LEDS_SINGLE_AXIS 4
#define NLSA NUM_LEDS_SINGLE_AXIS
#define BYTES_PER_LAYER (NUM_LEDS_LAYER / 8)

#define ENABLE_SPI 1

#define TRIPLE_LOOP(x,y,z) for(uint8_t x = 0;x < NUM_LEDS_SINGLE_AXIS;x++){\
                                for(uint8_t y = 0;y < NUM_LEDS_SINGLE_AXIS;y++){\
                                    for(uint8_t z = 0;z < NUM_LEDS_SINGLE_AXIS;z++){
#define END_TRIPLE_LOOP }}}

#define MILLIS_TIMER(x, timer) if (millis() - (timer) > (x)) {timer += (x);
#define END_MILLIS_TIMER } 


#define BUTTONS_LATCH 8
#define BUTTONS_DATA 9
#define BUTTON_CLOCK 7
#define BUTTON_WATCH 6





uint8_t leds0[NUM_LEDS / 8]; // each set of brightness
uint8_t leds1[NUM_LEDS / 8]; // each set of brightness
uint8_t leds2[NUM_LEDS / 8]; // each set of brightness
uint8_t leds3[NUM_LEDS / 8]; // each set of brightness

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
#define TIMER0_DUR 1


#endif





#if USING_SAMD
void TimerHandler0(void) {
#else 
ISR(TIMER1_COMPA_vect){
#endif
    // delay(1500);
    static uint8_t layer = 0;
    static uint8_t it = 1;
    digitalWrite(blank_pin, 1);//The first thing we do is turn all of the LEDs OFF, by writing a 1 to the blank pin
#if ENABLE_SPI
    SPI.transfer(0x80 >> layer);
#else
    shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST, 0x01 << layer);
#endif
    // 8 / 15
    if (it > 7) { // 8, 9, 10, 11, 12, 13, 14, 15
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
    if (it == 16) {
        it = 1;
    }

    if (layer == NUM_LEDS_SINGLE_AXIS) {
        layer = 0;
    }

    digitalWrite(LATCH_PIN, 1);//Latch pin HIGHf
    digitalWrite(LATCH_PIN, 0);//Latch pin LOW
    digitalWrite(blank_pin, 0);//Latch pin LOW
    // something++;
}

void set(uint8_t x, uint8_t y, uint8_t z, uint8_t power) {
    int whichbyte = int((z*NUM_LEDS_LAYER+y*NUM_LEDS_SINGLE_AXIS + x)/8);
    int wholebyte = (z*NUM_LEDS_LAYER)+(y*NUM_LEDS_SINGLE_AXIS)+x;
    bitWrite(leds3[whichbyte], wholebyte - (8 * whichbyte), (power & 0x08) >> 3); //  
    bitWrite(leds2[whichbyte], wholebyte - (8 * whichbyte), (power & 0x04) >> 2); //  
    bitWrite(leds1[whichbyte], wholebyte - (8 * whichbyte), (power & 0x02) >> 1); //  
    bitWrite(leds0[whichbyte], wholebyte - (8 * whichbyte), (power & 0x01) >> 0); //  
}


/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void setup() 
{
    pinMode(BUTTON_CLOCK, OUTPUT);
    pinMode(BUTTONS_DATA, OUTPUT);
    pinMode(BUTTONS_LATCH, OUTPUT);
    pinMode(BUTTON_WATCH, INPUT);
    pinMode(A7, INPUT);
    noInterrupts();
    Serial.begin(115200);
#if ENABLE_DEBUG
#endif
#if USING_SAMD
  samd_timer0.attachInterruptInterval(250, TimerHandler0);
#else
    TCCR1A = B00000000;//Register A all 0's since we're not toggling any pins
    TCCR1B = B00001011;//bit 3 set to place in CTC mode, will call an interrupt on a counter match
    TIMSK1 = B00000010;//bit 1 set to call the interrupt on an OCR1A match
    // OCR1A=10000; // you can play with this, but I set it to 30, which means:
    OCR1A=45;
#endif
    pinMode(LATCH_PIN, OUTPUT);//Latch
    pinMode(DATA_PIN, OUTPUT);//MOSI DATA
    pinMode(CLOCK_PIN, OUTPUT);//SPI Clock
    pinMode(10, OUTPUT);//SPI Clock
    pinMode(blank_pin, OUTPUT);//blank
    for (int i = 0; i < NUM_LEDS / 8; i++) {
        leds0[i] = 0;
        leds1[i] = 0;
        leds2[i] = 0;
        leds3[i] = 0;
    }
#if ENABLE_SPI
    SPI.begin(); //start up the SPI library
    // SPI.beginTransaction (SPISettings (16000000, LSBFIRST, SPI_MODE0));  // 2 MHz clock, MSB first, mode 0

    SPI.setBitOrder(LSBFIRST); //Most Significant Bit First
    SPI.setDataMode(SPI_MODE0); // Mode 0 Rising edge of data, keep clock low
    SPI.setClockDivider(SPI_CLOCK_DIV2); //Run the data in at 16MHz/2 - 8MHz
    digitalWrite(SS,LOW);
#endif
    interrupts();
}

void checkButtons() {
    Serial.print("Checking buttons...\n");
    int button = 1;
    // digitalWrite(BUTTON_CLOCK, 1);
    shiftOut(BUTTONS_DATA, BUTTON_CLOCK, MSBFIRST, 1 << 0);
    digitalWrite(BUTTONS_LATCH, 1);
    digitalWrite(BUTTONS_LATCH, 0);
    if (digitalRead(BUTTON_WATCH)) {
        Serial.print("Button 1 is Pressed\n");
    }
    shiftOut(BUTTONS_DATA, BUTTON_CLOCK, MSBFIRST, 1 << 1);
    digitalWrite(BUTTONS_LATCH, 1);
    digitalWrite(BUTTONS_LATCH, 0);
    if (digitalRead(BUTTON_WATCH)) {
        Serial.print("Button 2 is Pressed\n");
    }
    shiftOut(BUTTONS_DATA, BUTTON_CLOCK, MSBFIRST, 1 << 2);
    digitalWrite(BUTTONS_LATCH, 1);
    digitalWrite(BUTTONS_LATCH, 0);
    if (digitalRead(BUTTON_WATCH)) {
        Serial.print("Button 3 is Pressed\n");
    }
}

/*
 * loop() - this function runs over and over again
 */
uint8_t power = 1;
uint8_t onUP = 1;
void loop()
{
// #if ENABLE_DEBUG
//     uint32_t timeit = micros();
// #endif
    static uint32_t timer = millis();
    static int layer = 3;
    MILLIS_TIMER(50, timer)
    TRIPLE_LOOP(x,y,z)
        set(1,3,2,power);
    END_TRIPLE_LOOP
    if (onUP) {
        power = power + 1;
        onUP = power == 15 ? 0 : 1;
    } else {
        power = power - 1;
        onUP = power == 0 ? 1 : 0;
    }
    END_MILLIS_TIMER
    static uint32_t timer1 = millis();
    MILLIS_TIMER(500, timer1)
        checkButtons();
    END_MILLIS_TIMER
}
