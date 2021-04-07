// #ifndef DODGE
// #define DODGE
// #include "../../src/LED_Cube_library/Basic_Functions.h"
// #include "../../src/LED_Cube_library/Helpful_Functions.h"
// #include "../App/App.h"

// class Dodge: public App
// {
// public:
//     const String title = "Dodge";
//     void run(uint32_t time = 0, bool timed = false);
// };


// void Dodge::run(uint32_t time, bool timed)
// {

//     uint32_t timer0 = millis();
//     uint32_t dificultyTimer = millis();
//     uint8_t ledCount = 3;
//     uint8_t key = 0;
//     boolean start = false;
//     clearCube();
//     uint32_t timer = millis();

//     while (!timed || millis() - timer < time)
//     {

//         if (millis() - dificultyTimer > 5000 && start)
//         {

//             ledCount++;
//             // Serial.print(ledCount);
//             dificultyTimer += 5000;
//         }
//         uint16_t delayTime = 150;

//         if (key != 7)
//         {
//             set_led(5, 5, 1, 0xF00);
//             set_led(6, 5, 1, 0xF00);
//             set_led(5, 6, 1, 0xF00);
//             set_led(6, 6, 1, 0xF00);
//             set_led(5, 5, 2, 0xF00);
//             set_led(6, 5, 2, 0xF00);
//             set_led(5, 6, 2, 0xF00);
//             set_led(6, 6, 2, 0xF00);
//         }

//         char c = '\0';

//         if (keyboard.available())
//         {
//             start = true;
//             timer0 = millis();
//             c = keyboard.read();
//             if (c == PS2_ESC)
//             {
//                 break;
//             }
//         }

//         if (c == PS2_UPARROW)
//         {
//             for (int i = 0; i < 12; i++)
//             {
//                 Relativistic::moveRow(i, 1, Relativistic::UP, 0xF00, true);
//                 Relativistic::moveRow(i, 2, Relativistic::UP, 0xF00, true);
//                 c = '\0';
//             }
//         }
//         else if (c == PS2_DOWNARROW)
//         {
//             for (int i = 0; i < 12; i++)
//             {
//                 Relativistic::moveRow(i, 1, Relativistic::DOWN, 0xF00, true);
//                 Relativistic::moveRow(i, 2, Relativistic::DOWN, 0xF00, true);
//                 c = '\0';
//             }
//         }
//         else if (c == PS2_LEFTARROW)
//         {
//             for (int i = 0; i < 12; i++)
//             {
//                 Relativistic::moveRow(1, i, Relativistic::LEFT, 0xF00, true);
//                 Relativistic::moveRow(2, i, Relativistic::LEFT, 0xF00, true);
//                 c = '\0';
//             }
//         }
//         else if (c == PS2_RIGHTARROW)
//         {
//             for (int i = 0; i < 12; i++)
//             {

//                 Relativistic::moveRow(10, i, Relativistic::RIGHT, 0xF00, true);
//                 Relativistic::moveRow(9, i, Relativistic::RIGHT, 0xF00, true);
//                 c = '\0';
//             }
//         }

//         if (start)
//         {
//             if (millis() - timer0 > delayTime)
//             {
//                 Serial.print(ledCount);
//                 Help::setRandomLED(ledCount, Relativistic::BACKWARD, 0xFFF);

//                 for (int i = 0; i < 12; i++)
//                 {
//                     for (int j = 0; j < 12; j++)
//                     {

//                         Relativistic::moveRow(i, j, Relativistic::BACKWARD, 0xFFF);
//                     }
//                 }
//                 timer0 += delayTime;
//             }
//         }
//         else if (key != 7)
//         {
//             Help::setRandomLED(ledCount, Relativistic::BACKWARD, 0xFFF);
//             key = 7;
//         }
//     }
//     clearCube();
// }

// #endif