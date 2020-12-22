#include "Arduino.h"
#include "src/base/mux.h"
#include "src/base/config.h"
#include "src/base/basic_functions.h"
#include "src/Apps/App.h"
#include "src/Tools/OS/Menu.h"
#include "src/Apps/Animations/Snow.h"
#include "src/Apps/Animations/Space.h"
#include "src/Apps/Animations/Swirl.h"
#include "src/Apps/Animations/Wave.h"
#include "src/Apps/Animations/Squares.h"
#include "src/Apps/Experimental/RandomParticle.h"
void setup()
{
    mux_init();
}

void drawcube(uint8_t x, uint8_t y, uint8_t z, uint8_t length, uint8_t power)
{
    int endX = 6; //x + length;
    int endY = 6; //y + length;
    int endZ = 6; //z + length;
    x = 0;
    y = 0;
    z = 0;
    // set_led(x, x, x, power);

    for (x = 2; x < endX; x++)
    {
        for (y = 2; y < endY; y++)
        {
            for (z = 2; z < endZ; z++)
            {
                set_led(x, y, z, power);
            }
        }
    }
}

void loop()
{
    // in regards to the use of new, we do not need to worry about leaking memory because this will last till the thing is turned off.
    // Could possibly optimise memory by not allocating all apps at once, but will need a new mechinism
    // RandomParticles s;
    // s.run();
     App* stuff[4] = {
         new Squares(), new Space(), new Wave(), new Snow()
     };
     App** screenSaver = stuff;
    // creation of the menu application 
     Menu menu = Menu(((App**)stuff), 4, (App**)screenSaver, 4);
    menu.run(); // thats all folks
}
