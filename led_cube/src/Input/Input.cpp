#include "Input.h"

// TODO: Implement

bool Input::available() {
    return false;
}

input_t Input::read() {
    return '\0';
}

unsigned int Input::analogH_p1() {
#if INPUT_TYPE == CUSTOM_CONTROLLER
    return 1000;
#else
    return 0;
#endif
}

unsigned int Input::analogV_p1() {
#if INPUT_TYPE == CUSTOM_CONTROLLER
    return 1000;
#else
    return 0;
#endif
}

unsigned int Input::analogH_p2() {
#if INPUT_TYPE == CUSTOM_CONTROLLER
    return 1000;
#else
    return 0;
#endif
}

unsigned int Input::analogV_p2() {
#if INPUT_TYPE == CUSTOM_CONTROLLER
    return 1000;
#else
    return 0;
#endif
}