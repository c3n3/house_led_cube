#pragma once
#include "Arduino.h"
#include "../types/typedef.h"
#include "config.h"
void set_led(uint8_t x, uint8_t y, uint8_t z, uint8_t brightness);
uint8_t get_led(uint8_t x, uint8_t y, uint8_t z);
void clearCube();
#define TRIPLE_LOOP(x,y,z) for(uint8_t x = 0;x < NUM_LEDS_SINGLE_AXIS;x++){\
                                for(uint8_t y = 0;y < NUM_LEDS_SINGLE_AXIS;y++){\
                                    for(uint8_t z = 0;z < NUM_LEDS_SINGLE_AXIS;z++){
#define END_TRIPLE_LOOP }}}
#define MILLIS_TIMER(x, timer) if (millis() - (timer) > (x)) {timer += (x);
#define END_MILLIS_TIMER } 
