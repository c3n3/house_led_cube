// #ifndef TYPE_ENGINE
// #define TYPE_ENGINE
// #include "../../types/typedef.h"
// #include "../../Tools/RelativeCoordinates/Relativistic.h"
// #include "Arduino.h"

// /**
//  * @brief This is a static typing engine solution that you can use to print text to the cube
//  */
// class TypeEngine
// {
// private:

//     // how many chars are on the upper line
//     static uint8_t upperCharCount;

//     // how many chars can ocupy one side of the cube
//     static const uint8_t charsPerSide = 2; // how many characters can fit on a cube side

//     // the LED width of a character
//     static const uint8_t charWidth = 3; 

//     // an array holding the upper line
//     static char upperChars[16];

//     // this is a helpful function that gets the direction of the next character
//     static Relativistic::Directions getDirection(uint8_t);

//     // this is a basic function that types a character to the cube
//     static void type(char, uint8_t, uint16_t, bool);

//     // clears a layer of the TypeEngine
//     static void clearLayer(bool lower);

// public:
//     /**
//      * @brief Construct a new Type Engine object; JK you cannot use this constructor to even make a TypeEngine, it is fully static
//      * 
//      */
//     TypeEngine() = delete;

//     // the font that is used to draw chars 
//     static uint16_t font[37];

//     // the bottom of the letter hieght for the upper string of chars
//     static uint8_t upperHeight;

//     // gets the index of the char for the font
//     static uint8_t getFontIndex(char c);

//     // draws a char c at the coordinates in the direction of the viewPoint with the color
//     static void drawChar(char c, int x1, int y1, int z1, Relativistic::Directions viewpoint, uint16_t color);

//     // Types chars on the top that scroll across the cubes outside
//     static void typeUpper(char c, uint16_t color);

//     // types a string across the top of the cube with alternating colors
//     static void autoTypeUpper(String str, uint16_t col1, uint16_t col2, bool clear = true);

//     // type a char * like above
//     static void autoTypeUpper(const char* str, uint16_t color1, uint16_t color2, bool clear = true);

//     // gets the upper char count
//     static uint8_t getUpperCharCount();

//     // just resets the char count for upper line, does not clear
//     static void resetCharCountUpper();
// };
// #endif