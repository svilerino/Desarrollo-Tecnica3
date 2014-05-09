#include "Punto3d.h"

Punto3d::Punto3d():Punto(){
    z=0;
}

Punto3d::Punto3d(int px,int py,int pz):Punto(px,py){
    z=pz;
}

void Punto3d::setZ(int pz){
    z=pz;
}

int Punto3d::getZ(){
    return(z);
}

int Punto3d::getX(){
    return(x+2);
}
