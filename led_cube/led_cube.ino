#include "./src/setup/mux.h"
#include "./src/types/typedef.h"

volatile uint8_t px_buf[NUM_LEDS];

/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void setup() 
{
    mux_init();
}

/*
 * loop() - this function runs over and over again
 */
void loop() 
{
    px_buf[1] = 255;
    draw_cube();
    delay(1000);
}
