// #include "./src/setup/mux.h"
#include "./src/types/typedef.h"
#include "./src/base/basic_functions.h"
#include <SPI.h>
// extern uint8_t px_buf[NUM_LEDS / 2];
#define LATCH_PIN 5
#define CLOCK_PIN 13
#define DATA_PIN 11 

#define blank_pin 4// same, can use any pin you want for this, just make sure you pull up via a 1k to 5V

#define NUM_LEDS 64
#define NUM_LEDS_LAYER 16
#define NUM_LEDS_SINGLE_AXIS 4
#define BYTES_PER_LAYER (NUM_LEDS_LAYER / 8)
uint8_t leds0[NUM_LEDS / 8]; // each set of brightness
uint8_t leds1[NUM_LEDS / 8]; // each set of brightness
uint8_t leds2[NUM_LEDS / 8]; // each set of brightness
uint8_t leds3[NUM_LEDS / 8]; // each set of brightness

void drawCube() {
    // delay(500);
    static uint8_t layer = 0;
    static uint8_t it = 1;
    PORTD |= 1<<blank_pin;//The first thing we do is turn all of the LEDs OFF, by writing a 1 to the blank pin
    //  shiftOut(DATA_PIN, CLOCK_PIN, MSBFIRST, 0x01 << layer);
    SPI.transfer(0x01 << layer);
    // 8 / 15
    if (it > 7) { // 8, 9, 10, 11, 12, 13, 14, 15
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++)
            // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds3[i]);
           SPI.transfer(leds3[i]);
    }
    // 4 / 15
    else if (it > 3) { // 4, 5, 6, 7
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++)
            // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds2[i]);
            SPI.transfer(leds2[i]);
    }
    // 2 / 15
    else if (it > 1) { // 2, 3
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++)
            // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds1[i]);
            SPI.transfer(leds1[i]);
    }
    else { // 1
        for (int i = layer * BYTES_PER_LAYER; i < layer * BYTES_PER_LAYER + BYTES_PER_LAYER; i++)
            // shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, leds0[i]);
            SPI.transfer(leds0[i]);
    }

    it++;
    layer++;
    if (it == 16) {
        it = 1;
    }

    if (layer == NUM_LEDS_SINGLE_AXIS) {
        layer = 0;
    }

    digitalWrite(LATCH_PIN,1);//Latch pin HIGHf
    digitalWrite(LATCH_PIN, 0);//Latch pin LOW
    PORTD &= 0<<blank_pin;//Blank pin LOW to turn on the LEDs with the new data

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
    SPI.setBitOrder(LSBFIRST); //Most Significant Bit First
    SPI.setDataMode(SPI_MODE0); // Mode 0 Rising edge of data, keep clock low
    SPI.setClockDivider(SPI_CLOCK_DIV2); //Run the data in at 16MHz/2 - 8MHz
    SPI.begin(); //start up the SPI library
}

/*
 * loop() - this function runs over and over again
 */
uint32_t timer = millis();
void loop()
{
    for (int i= 0; i< NUM_LEDS_SINGLE_AXIS; i++) {
        for (int k= 0; k< NUM_LEDS_SINGLE_AXIS; k++) {
            for (int j= 0; j< NUM_LEDS_SINGLE_AXIS; j++) {
                set(i, j, k, 1);
            }
        }
    }
    drawCube();
}
