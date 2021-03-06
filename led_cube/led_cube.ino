#include "Arduino.h"
#include "src/base/mux.h"
#include "src/base/config.h"
#include "src/base/basic_functions.h"
#include "src/App/App.h"
#include "src/OS/Menu.h"
#include "src/Animations/Snow.h"
#include "src/Animations/Blink.h"
#include "src/Animations/Space.h"
#include "src/Animations/Swirl.h"
#include "src/Animations/Wave.h"
#include "src/Animations/Wave2.0.h"
#include "src/Animations/Squares.h"
#include "src/Experimental/RandomParticle.h"
#include "src/Animations/Plane.h"

void setup()
{
    mux_init();

    // Throw some entropy into the rand seed.
    srand(micros() + millis() + analogRead(7));
}


void loop()
{
    // App* app = App::Ctor<Blink>();
    // app->run();
     AppCtor stuff[] = {
          App::Ctor<Wave2p0>, App::Ctor<Squares>, App::Ctor<Wave2p0>, App::Ctor<Space>, App::Ctor<Wave2p0>, App::Ctor<Snow>
     };
     AppCtor* screenSaver = stuff;
    // creation of the menu application 
     Menu menu = Menu(((AppCtor*)stuff), 6, (AppCtor*)screenSaver, 6);
    menu.run(); // thats all folks
}
