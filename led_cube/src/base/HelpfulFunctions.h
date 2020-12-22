#ifndef HELPFUL_FUNCTIONS
#define HELPFUL_FUNCTIONS
#include "Arduino.h"
#include "basic_functions.h"
#include "../types/typedef.h"
/**
 * @brief this contains functions that can be very useful for making animation, but dont quite make the bare metal Basic_Functions.h standard
 */
class help
{
public:
    // delete all of a color on the entire cube
    static void eradicate(uint8_t power);

    // used to make float values into integers
    static ui8 normalize(float& notNormal);

    // draws a box based on the 6 coordinates (Two Points in the cube) and the color (This thing definitley needs rewritting)
    static void DrawFigure(int x1, int y1, int z1, int x2, int y2, int z2, uint8_t power);
};
#endif