#include "basic_functions.h"
#include "config.h"
extern uint8_t leds0[NUM_LEDS / 8]; // each set of brightness
extern uint8_t leds1[NUM_LEDS / 8]; // each set of brightness
extern uint8_t leds2[NUM_LEDS / 8]; // each set of brightness
extern uint8_t leds3[NUM_LEDS / 8]; // each set of brightness
extern uint8_t leds4[NUM_LEDS / 8]; // each set of brightness

void set_led(uint8_t x, uint8_t y, uint8_t z, uint8_t power) {
    if (x > AXIS_MAX || y > AXIS_MAX || z > AXIS_MAX) return;
    y = 7 - y; // just makes the thing
    int byte = int((z*NUM_LEDS_LAYER+y*NUM_LEDS_SINGLE_AXIS + x)/8);
    int ledNum = (z*NUM_LEDS_LAYER)+(y*NUM_LEDS_SINGLE_AXIS) + x - (8 * byte);
    bitWrite(leds4[byte], ledNum, (power & 0x10) >> 4); //  
    bitWrite(leds3[byte], ledNum, (power & 0x08) >> 3); //  
    bitWrite(leds2[byte], ledNum, (power & 0x04) >> 2); //  
    bitWrite(leds1[byte], ledNum, (power & 0x02) >> 1); //  
    bitWrite(leds0[byte], ledNum, (power & 0x01) >> 0); //  
}

uint8_t get_led(uint8_t x, uint8_t y, uint8_t z) {
    y = 7 - y; // just makes the thing
    int byte = int((z*NUM_LEDS_LAYER+y*NUM_LEDS_SINGLE_AXIS + x)/8);
    int ledNum = (z*NUM_LEDS_LAYER)+(y*NUM_LEDS_SINGLE_AXIS) + x - (8 * byte);
    uint8_t ret = 0;
    ret |= ((leds4[byte] >> ledNum) & 0x01) << 4;  
    ret |= ((leds3[byte] >> ledNum) & 0x01) << 3;  
    ret |= ((leds2[byte] >> ledNum) & 0x01) << 2;  
    ret |= ((leds1[byte] >> ledNum) & 0x01) << 1;  
    ret |= ((leds0[byte] >> ledNum) & 0x01) << 1;
    return ret;
}


//self explainatory
void clearCube(){
    memset((uint8_t *)leds0, 0x00, NUM_LEDS / 8);
    memset((uint8_t *)leds1, 0x00, NUM_LEDS / 8);
    memset((uint8_t *)leds2, 0x00, NUM_LEDS / 8);
    memset((uint8_t *)leds3, 0x00, NUM_LEDS / 8);
}
