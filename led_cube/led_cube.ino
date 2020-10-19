// #include "./src/setup/mux.h"
#include "./src/types/typedef.h"
#include "./src/base/basic_functions.h"
#include <SPI.h>
// extern uint8_t px_buf[NUM_LEDS / 2];
#define LATCH_PIN 5
#define LATCH_PIN_LAYER 6
#define CLOCK_PIN 13
#define DATA_PIN 11 
#define NUM_LEDS 16

#define latch_pin 2// can use any pin you want to latch the shift registers
#define blank_pin 4// same, can use any pin you want for this, just make sure you pull up via a 1k to 5V
#define data_pin 11// used by SPI, must be pin 11
#define clock_pin 13// used by SPI, must be 13


uint8_t leds0[3];
uint8_t leds1[3];
uint8_t leds2[3];
uint8_t leds3[3];

void drawCube() {
    static unsigned int something = 0;
    static uint8_t layer = 0;
    static uint8_t it = 1;
    if (something  == -1) {
        // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, 0x00);
    digitalWrite(LATCH_PIN,1);//Latch pin HIGH
    digitalWrite(LATCH_PIN, 0);//Latch pin LOW

        // something++;
        return;
    }
    PORTD |= 1<<blank_pin;//The first thing we do is turn all of the LEDs OFF, by writing a 1 to the blank pin
    // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, 0x01 << layer);
    SPI.transfer(0x01 << layer);
    // 8 / 15
    if (it > 7) { // 8, 9, 10, 11, 12, 13, 14, 15
        // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds3[layer]);
        SPI.transfer(leds3[layer]);
    }
    // 4 / 15
    else if (it > 3) { // 4, 5, 6, 7
        // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds2[layer]);
        SPI.transfer(leds2[layer]);
    }
    // 2 / 15
    else if (it > 1) { // 2, 3
        // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds1[layer]);
        SPI.transfer(leds1[layer]);
    }
    else { // 1
        // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds0[layer]);
        SPI.transfer(leds0[layer]);
    }

    it++;
    layer++;
    if (it == 16) {
        it = 1;
    }

    if (layer == 3) {
        layer = 0;
    }
    digitalWrite(LATCH_PIN_LAYER,1);//Latch pin HIGHf
    digitalWrite(LATCH_PIN_LAYER, 0);//Latch pin LOW
    // delayMicroseconds(1000);
    digitalWrite(LATCH_PIN,1);//Latch pin HIGHf
    digitalWrite(LATCH_PIN, 0);//Latch pin LOW
    PORTD &= 0<<blank_pin;//Blank pin LOW to turn on the LEDs with the new data

    // something++;
}

void set(uint8_t led, uint8_t layer, uint8_t power) {
    bitWrite(leds0[layer], led, (power & 0x01));  
    bitWrite(leds1[layer], led, (power & 0x02) >> 1);  
    bitWrite(leds2[layer], led, (power & 0x04) >> 2);  
    bitWrite(leds3[layer], led, (power & 0x08) >> 3);  
}

/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void setup() 
{
    pinMode(LATCH_PIN, OUTPUT);//Latch
    pinMode(DATA_PIN, OUTPUT);//MOSI DATA
    pinMode(CLOCK_PIN, OUTPUT);//SPI Clock
    pinMode(LATCH_PIN_LAYER, OUTPUT);//SPI Clock
    pinMode(blank_pin, OUTPUT);//SPI Clock
    SPI.setBitOrder(LSBFIRST);//Most Significant Bit First
    SPI.setDataMode(SPI_MODE0);// Mode 0 Rising edge of data, keep clock low
    SPI.setClockDivider(SPI_CLOCK_DIV2);//Run the data in at 16MHz/2 - 8MHz
    SPI.begin();//start up the SPI library
}

/*
 * loop() - this function runs over and over again
 */
int thing = 0;
int dir = 0;
uint32_t timer = millis();
void loop() 
{
    static int row = 0;
    static int layer = 0;
    // if (millis() - timer > 25) {
    //     for (int i = 0 ; i < 8; i++) {
    //         set(i, 2, thing);
    //         // set(i, 1, thing);
    //         if (i % 2 == 0) {
    //         } else {

    //         }
    //         // set(i, 0, thing);
    //     }
    //     thing = dir == 1 ? thing - 1 : thing + 1;
    //     if (thing == 15) {
    //         dir = 1;
    //     }
    //     if (thing == 0) {
    //         dir = 0;
    //     }
    //     timer = millis();
    // }
    // set(1, 1, 15);
    // set(2, 2, 15);
    // set(3, 0, 15);
    // set(1, 1, 15);
    // if (millis() - timer > 100) {
    //     set(row, layer, 15);
    //     set((((row + 8) - 1) % 8), layer, 0);
    //     timer = millis();
    //     row++;
    //     if (row == 8) {
    //         row = 0;
    //         layer = layer == 2 ? 0 : layer + 1;
    //     }
    // }
    for (int i = 0; i < 8 ; i++) {
        // set(i, 0, 15);
        set(i, 1, 15);
    }
    // set(1, 0, 15);
    // set(1, 1, 7);
    // set(2, 0, 1);
    // set(3, 1, 7);
    // set(4, 1, 15);
    // delay(200);
    // delay(200);
    drawCube();
}
