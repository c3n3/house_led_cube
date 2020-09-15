#include "mux.h"
#include "../types/typedef.h"
#include "Arduino.h"
extern uint8_t px_buf[NUM_LEDS];
static uint8_t bit_angle;
void mux_init() {
    pinMode(LATCH_PIN, OUTPUT);
    pinMode(DATA_PIN, OUTPUT);  
    pinMode(CLOCK_PIN, OUTPUT);
}

void draw_cube() {
    uint8_t data[NUM_LEDS / 8] = {0, 0};
    for (int i = 0; i < NUM_LEDS; i++) {
        uint8_t led = px_buf[i];
        led = (led * (led > bit_angle)) & 0x01;
        data[(i / 8)] = data[i / 8] | (led << i);
    }
    bit_angle++;
}

void output_mux(uint8_t data[NUM_LEDS / 8]) {
    digitalWrite(LATCH_PIN, LOW);
    shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, data[1]);
    shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, data[0]);
    digitalWrite(LATCH_PIN, HIGH);
}