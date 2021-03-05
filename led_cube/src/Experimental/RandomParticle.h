#pragma once
#include "../App/App.h"
#include "../ParticleSystem/Particle.h"
#include "../MathObjects/Vector.h"

class RandomParticles: public App
{
private:
    static const int count = 5;
    Particle* particle[count]; // array of particle pointers
    uint32_t t;
    uint32_t reset;
protected:
    bool init();
    void end();
public:
    String title = "Particles";
    bool frame();
};

bool RandomParticles::init() {
    t = millis();
    reset = millis();
    for (int i = 0; i < count; i++) {
        particle[i] = new Particle(
                Vector<float>(rand() % AXIS_MAX, AXIS_MAX, rand() % AXIS_MAX), 
                Vector<float>(0, -1, 0), 
                Vector<float>(0,-1 * (rand() % 100 + 1) / 75.0, 0), 
                25, Particle::TELEPORT, 5);
    }
    return CONTINUE_PROGRAM;
}

bool RandomParticles::frame() {
    if (millis() - reset > 10000) {
        for (int i = 0; i < count; i++) {
            particle[i]->velocity.y = (particle[i]->velocity.y + (particle[i]->acceleration.y * (particle[i]->timer - particle[i]->timeStartY - particle[i]->resolution) * 0.00098993));
            particle[i]->acceleration.y = -1 * particle[i]->acceleration.y;
            // particle[i]->timeStartY = millis();
            particle[i]->origin.y = particle[i]->point.y;
            reset += 10000;
        }
    }
    if (millis() - t > 20) {
        for (int i = 0; i < count; i++) {
            particle[i]->drawSelf(0);
            particle[i]->updatePosition();
            particle[i]->drawSelf();
        }
        t += 20;
    }
    return CONTINUE_PROGRAM;
}

void RandomParticles::end() {
    for (int i = 0; i < count; i++) {
        delete particle[i];
    }
}