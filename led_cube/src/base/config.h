#pragma once
// SAMD is the 32 bit arduinos, otherwise assumes AVR
#define USING_SAMD 1

// Cube type. Unified cube theory...
// All supported cubes listed here.
// Set CUBE_TYPE to whatever cube you are using.
#define CADEN_CHURCHMAN_CUSTOM_V1 0
#define KSU_12x12x12_RGB_CUBE 1
#define CUBE_TYPE CADEN_CHURCHMAN_CUSTOM_V1
#define PS2_KEYBOARD 0
#define CUSTOM_CONTROLLER 1



#if CUBE_TYPE == CADEN_CHURCHMAN_CUSTOM_V1

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
#define INPUT_TYPE CUSTOM_CONTROLLER
#define NUM_LEDS_SINGLE_AXIS 8

// The giant cube
#elif CUBE_TYPE == KSU_12x12x12_RGB_CUBE
#define INPUT_TYPE PS2_KEYBOARD
#define NUM_LEDS_SINGLE_AXIS 12
#endif

#define NUM_LEDS_LAYER (NUM_LEDS_SINGLE_AXIS * NUM_LEDS_SINGLE_AXIS)
#define NUM_LEDS (NUM_LEDS_SINGLE_AXIS * NUM_LEDS_SINGLE_AXIS * NUM_LEDS_SINGLE_AXIS)
#define NLSA NUM_LEDS_SINGLE_AXIS
#define AXIS_MAX (NLSA - 1)
#define BYTES_PER_LAYER (NUM_LEDS_LAYER / 8)

// SPI is much faster, use this if possible.
#define ENABLE_SPI 1
