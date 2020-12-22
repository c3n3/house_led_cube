// #pragma once
// #include "Firework.h"

// // a small ball effect 
// FireWorkEffect SmallBallWithFade(
//     [](ui8 x, ui8 y, ui8 z, uint8_t& power, int& interval) {
//         // ignore interval and draw ball
//         for (int i = 0; i < 3; i++) {
//             protected_set_led(x + i - 1, y, z, power);
//             protected_set_led(x, y + i - 1, z, power);
//             protected_set_led(x, y, z + i - 1, power);
//         }
//         power--;
//     },
//     8, // how many intervals till the effect is dead 
//     300 // interval time 
// );

// // a large star effect
// FireWorkEffect LargeStarWithFade(
//     [](ui8 x, ui8 y, ui8 z, uint8_t& power, int& interval) {
//         // ignore interval and draw ball

//         // inner small diagnals for 3 axis (3 choose 2 == 3)
//         for (int i = 0; i < 3; i++) {
//             // x - y plane
//             protected_set_led(x + i - 1, y + i - 1, z, power);
//             protected_set_led(x + i - 1, y - i + 1, z, power);

//             // x - z plane
//             protected_set_led(x + i - 1, y, z + i - 1, power);
//             protected_set_led(x + i - 1, y, z - i + 1, power);

//             // y - z plane
//             protected_set_led(x, y + i - 1, z + i - 1, power);
//             protected_set_led(x, y + i - 1, z - i + 1, power);
//         }
//         // the large star points
//         for (int i = 0; i < 5; i++) {
//             protected_set_led(x + i - 1, y, z, power);
//             protected_set_led(x, y + i - 1, z, power);
//             protected_set_led(x, y, z + i - 1, power);
//         }
//         power--; // just naively fade the power right now
//     },
//     8,
//     300
// );