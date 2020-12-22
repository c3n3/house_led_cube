#include "Menu.h"
#include "../../Tools/TypingEngine/TypeEngine.h"
Menu::Menu(App **theApps, uint8_t m1, App** screenSavers, uint8_t m2)
{
    
    max = m1;
    asleep = new Asleep(screenSavers, m2);
    apps = theApps;
}
void Menu::run()
{
    asleep->go(60000);
    while (true)
    {
        char c;
        uint8_t current = 0;
        while (true)
        {
            // TODO: Implement

            if (false /*Escape*/) {
                asleep->go(20000);
            }

            if (false /*Left*/)
            {
                current = current == 0 ? max - 1 : current - 1;
            }

            if (false /*Right*/)
            {
                current = current == max - 1 ? 0 : current + 1;
            }

            if (false /*Enter*/)
            {
                (*apps[current]).run();
            }
            // FIX ON ALT: x's do not line up.
            // TypeEngine::drawChar(current + '0', 3, 3, 1, Relativistic::FORWARD, 0xFFFF);
            c = '\0';
        }
    }
};