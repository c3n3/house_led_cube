#include <iostream>
#include <bitset>
std::bitset<8> px_buf_1[2];
std::bitset<8> px_buf_2[2];
std::bitset<8> px_buf_4[2];
std::bitset<8> px_buf_8[2];

// c: max of 4 bits of data, rest will die
void set_led(unsigned char p, unsigned char c) {
    px_buf_1[p / 8].set(p % 8, c & 0x01);
    unsigned char b1 = (c & 0x02) >> 1;
    unsigned char b2 = (c & 0x04) >> 2;
    unsigned char b3 = (c & 0x08) >> 3;
}

unsigned char grab_led(unsigned char p) {
}

void setup() {
}
#include "stdio.h"

int main(int, char**) {
    setup();
    set_led(0, 2);
    set_led(0, 2);
    set_led(0, 2);
    printf("%#X", grab_led(0));
}
