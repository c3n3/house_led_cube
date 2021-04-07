#include "Particle.h"
void Particle::handleWallHit(float& x, float& v, float& a, uint32_t& t, float& orig) {

    // these equations for more precision could be made to calculate intersect point, but that seems too expensive
    if (x > AXIS_MAX || x < 0) {
        if (effect == STICK) {
            velocity.set(0,0,0);
            acceleration.set(0,0,0);
        }
        else if (effect == BOUNCE) {
            x = (AXIS_MAX < x) * (AXIS_MAX); // make either one or AXIS_MAX (could do above ^^^^)
            // velocity = the change in time * acceleration * 
            v = -(v + (a * (timer - t - resolution) * 0.00098993)); // perfectly elastic equation?
            t = timer; // new tragectory new time start
            orig = x;
        }
        else if (effect == SLIDE) {
            v = 0;
            a = 0;
        } else if (effect == TELEPORT) {
            if (x < 0) x = AXIS_MAX + x;
            else if (x > AXIS_MAX) x = x - AXIS_MAX;
            v = (v + (a * (timer - t - resolution) * 0.00098993));
            orig = x;
            t = timer;
        } // if it is a phase through type, just do nothing
    }
};

Particle& Particle::operator=(const Particle& other) {
    power = other.power;
    point = other.point;
    acceleration = other.acceleration;
    velocity = other.velocity;
    effect = other.effect;
    timeStartX = other.timeStartX;
    timeStartY = other.timeStartY;
    timeStartZ = other.timeStartZ;
}

void Particle::updatePosition() {
    // use equations x = x0 + v * t + 1/2 * a * t^2, where t = time passed = timer - timeStart
    if (millis() - timer > resolution) {
        point.x = origin.x + velocity.x * (timer - timeStartX) * 0.001 + 0.5 * acceleration.x * (timer - timeStartX) * (timer - timeStartX) * 0.001 * 0.001;
        point.y = origin.y + velocity.y * (timer - timeStartY) * 0.001 + 0.5 * acceleration.y * (timer - timeStartY) * (timer - timeStartY) * 0.001 * 0.001;
        point.z = origin.z + velocity.z * (timer - timeStartZ) * 0.001 + 0.5 * acceleration.z * (timer - timeStartZ) * (timer - timeStartZ) * 0.001 * 0.001;
        timer = millis();

        // handle a bounds issue with every single axis
        handleWallHit(point.x, velocity.x, acceleration.x, timeStartX, origin.x);
        handleWallHit(point.y, velocity.y, acceleration.y, timeStartY, origin.y);
        handleWallHit(point.z, velocity.z, acceleration.z, timeStartZ, origin.z);
    }
}

void Particle::drawSelf(const uint8_t powour) {
    // if ((point.x - (int)point.x > tolerance) && (point.x - (int) point.x < 1 - tolerance) &&
    // (point.y - (int)point.y > tolerance) && (point.y - (int) point.y < 1 - tolerance) &&
    // (point.z - (int)point.z > tolerance) && (point.z - (int) point.z < 1 - tolerance)
    // ) {
    //     return;
    // }
    set_led(Help::normalize(point.x), Help::normalize(point.y), Help::normalize(point.z), powour);
}

void Particle::drawSelf() {
    // if ((point.x - (int)point.x > tolerance) && (point.x - (int) point.x < 1 - tolerance) &&
    // (point.y - (int)point.y > tolerance) && (point.y - (int) point.y < 1 - tolerance)) {
    //     return;
    // }
    set_led(Help::normalize(point.x), Help::normalize(point.y), Help::normalize(point.z), power);
}
    
Particle::Particle(Vector<float> p, Vector<float> v, Vector<float> a, uint16_t r, WallEffects e, uint8_t power, float tolerance): resolution(r), power(power), tolerance(tolerance) {
    point = p; 
    velocity = v;
    acceleration = a;
    effect = e;
    origin = p;
    timeStartX = millis();
    timeStartY = millis();
    timeStartZ = millis();
    timer = millis();
}

Particle::Particle(): resolution(0.5) {
    point = Vector<float>(0,0,0);
    velocity = Vector<float>(0,0,0);
    acceleration = Vector<float>(0,0,0);
    effect = BOUNCE;
    origin = Vector<float>(0,0,0);
    timeStartX = millis();
    timeStartY = millis();
    timeStartZ = millis();
    timer = millis();
}