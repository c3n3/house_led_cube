#include "basic_functions.h"
#include "../setup/mux.h"
extern uint8_t px_buf[NUM_LEDS / 2];
void set_led(uint8_t p, uint8_t c) {
    uint8_t position = p / 2;
    uint8_t offset = (p % 2) * 4;
    // Serial.print("position: ");
    // Serial.print(position);
    // Serial.print( "\n");

    Serial.print("--------------------\n");
    Serial.print("C ");
    Serial.print(c);
    Serial.print( "\n");
    Serial.print("other side: ");
    Serial.print( (byte)~(0x0F << offset), HEX);
    Serial.print("\n");
    Serial.print("c << offset: ");
    Serial.print( (byte)~(0x0F << offset), HEX);
    Serial.print("\n");

    px_buf[position] = (px_buf[position] & ~(0x0F << offset)) | (c << offset);
    Serial.print("PXBUF: ");
    Serial.print(px_buf[position],  HEX);
    Serial.print("\n");
    Serial.print("result: ");
    Serial.print(grab_led(p), HEX);
    Serial.print("\n");
    // Serial.print("\n");
}

uint8_t grab_led(uint8_t pos) {
    return px_buf[pos / 2] >> ((pos % 2) * 4);
}