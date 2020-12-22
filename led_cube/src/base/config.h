#pragma once
// SAMD is the 32 bit arduinos, otherwise assumes AVR
#define USING_SAMD 0

//PINS
#define BLANK_PIN 4
#define ENABLE_DEBUG 1
#define LATCH_PIN 5
#define CLOCK_PIN 13
#define DATA_PIN 11 
#define BUTTONS_LATCH 8
#define BUTTONS_DATA 9
#define BUTTON_CLOCK 7
#define BUTTON_WATCH 6

// Helpful
#define NUM_LEDS 512
#define NUM_LEDS_LAYER 64
#define NUM_LEDS_SINGLE_AXIS 8
#define NLSA NUM_LEDS_SINGLE_AXIS
#define AXIS_MAX (NLSA - 1)
#define BYTES_PER_LAYER (NUM_LEDS_LAYER / 8)

// SPI is much faster, use this if possible.
#define ENABLE_SPI 1