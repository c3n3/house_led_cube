#include "mux.h"
#include "../types/typedef.h"
#include "Arduino.h"
#include "../base/basic_functions.h"
volatile uint8_t px_buf[NUM_LEDS / 2];

static uint8_t bit_angle;
void mux_init() {
    pinMode(LATCH_PIN, OUTPUT);
    pinMode(DATA_PIN, OUTPUT);  
    pinMode(CLOCK_PIN, OUTPUT);
    for (int i = 0; i < 16; i++) {
        px_buf[i] = 0;
    }
}

void draw_cube() {
    uint8_t data[NUM_LEDS / 4] = {0, 0};
    for (int i = 0; i < NUM_LEDS; i++) {
        uint8_t led = grab_led(i) != 0;
        // led = (led * (led > bit_angle)) != 0;
        data[(i / 8)] = data[i / 8] | (led << i);
    }
    // bit_angle = (bit_angle + 1) % 0x0F;
    output_mux(data);
}

void output_mux(uint8_t* data) {
    digitalWrite(LATCH_PIN, LOW);
    shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, data[1]);
    shiftOut(DATA_PIN, CLOCK_PIN, LSBFIRST, data[0]);
    digitalWrite(LATCH_PIN, HIGH);
}