#include "./src/setup/mux.h"
#include "./src/types/typedef.h"
#include "./src/base/basic_functions.h"
extern uint8_t px_buf[NUM_LEDS / 2];

/*
 * setup() - this function runs once when you turn your Arduino on
 * We initialize the serial connection with the computer
 */
void setup() 
{
    Serial.begin(9600);
    mux_init();
}

/*
 * loop() - this function runs over and over again
 */
void loop() 
{
    // set_led(1, 0x01);
    print_leds();
    // delay(2000);
    // set_led(1, 0x00);
    // print_leds();
    // delay(2000);
    // set_led(1, 0x02);
    // set_led(2, 0x03);
    // set_led(3, 0x04);
    // set_led(4, 0x0C);
    // set_led(5, 0x0D);
    // set_led(6, 0x0E);
    // set_led(7, 0x0F);
    // delay(1000);
    // Serial.print("From Main: ");
    // Serial.print((int)px_buf);
    // Serial.print("\n");
    draw_cube();
}
