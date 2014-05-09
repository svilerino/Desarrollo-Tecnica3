#include "Punto.h"
#ifndef PUNTO3D_H_INCLUDED
#define PUNTO3D_H_INCLUDED
class Punto3d:public Punto{
    private:
        int z;
    public:
        Punto3d();
        Punto3d(int,int,int);
        void setZ(int);
        int getZ();
        int getX();
};

#endif // PUNTO3D_H_INCLUDED

