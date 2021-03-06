#include "../types/typedef.h"
#include "../ParticleSystem/Particle.h"
#include "../RelativeCoordinates/Relativistic.h"
class Object
{
private:
    // function that draws the object
    void (*drawSelf)(ui8 x, ui8 y, ui8 z, Relativistic::Directions d, uint8_t color);
public:
    // the direction that the object lives in
    Relativistic::Directions direction;
    Particle position;
    uint8_t power;
    Object(
        Particle position, 
        Relativistic::Directions direction,
        void (*drawSelf)(ui8 x, ui8 y, ui8 z, Relativistic::Directions d, light_t color), 
        uint8_t power = 0xFF)
            : drawSelf(drawSelf), direction(direction), position(position), power(power) {}
    void draw() {
        (*drawSelf)(position.point.x, position.point.y, position.point.z, direction, power);
    }
};
