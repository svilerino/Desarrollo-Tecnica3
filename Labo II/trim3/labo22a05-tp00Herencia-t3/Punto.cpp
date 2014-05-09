#include "Punto.h"

Punto::Punto(){
    x=0;
    y=0;
}

Punto::Punto(int px,int py){
    x=px;
    y=py;
}

void Punto::setX(int px){
    x=px;
}

void Punto::setY(int py){
    y=py;
}

int Punto::getX(){
    return(x);
}

int Punto::getY(){
    return(y);
}
