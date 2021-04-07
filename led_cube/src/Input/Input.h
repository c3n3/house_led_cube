#include "../base/config.h"

#ifndef INPUT_H
#define INPUT_H

// Is the valud used for input.
typedef unsigned char input_t;

/**
 * @brief This is a simple static wrapper for input methods.
 * 
 */
class Input
{
public:
    // this is the available function
    static bool available();

    // This is the read function for the keyboard
    static input_t read();

    // analog stick for P1
    static unsigned int analogH_p1();
    static unsigned int analogV_p1();

    // analog for P2
    static unsigned int analogH_p2();
    static unsigned int analogV_p2();
};
  
#endif