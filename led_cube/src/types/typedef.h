#pragma once
#include "../base/config.h"
typedef unsigned char uint8_t;
typedef uint8_t ui8;
typedef unsigned long uint32_t;

#if CUBE_TYPE == CADEN_CHURCHMAN_CUSTOM_V1
typedef uint8_t light_t;
#elif CUBE_TYPE == KSU_12x12x12_RGB_CUBE
typdef uint16_t light_t;
#endif