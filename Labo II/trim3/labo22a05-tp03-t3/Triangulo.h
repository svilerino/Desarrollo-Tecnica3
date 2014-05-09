#ifndef TRIANGULO_H_INCLUDED
#define TRIANGULO_H_INCLUDED
#include "Poligono.h"
class Triangulo:public Poligono{
    public:
        Triangulo(float);
        float getSuperficie();
};

#endif // TRIANGULO_H_INCLUDED
