/*
Alumno: Vileriño, Silvio
Curso: 5to 2da
*/
#include <iostream>
#include "Punto3d.h"

using namespace std;

int main(int argc,char* argv[]){
    Punto3d *p1;
    int px,py,pz;
    cout <<"Ingrese Punto X: "<<endl;
    cin >>px;
    cout <<"Ingrese Punto Y: "<<endl;
    cin >>py;
    cout <<"Ingrese Punto Z: "<<endl;
    cin >>pz;
    p1= new Punto3d(px,py,pz);
    cout <<endl<<"Informacion del punto 2d:"<<endl;
    cout <<"X:"<<p1->getX()-2<<endl;
    cout <<"Y:"<<p1->getY()<<endl;

    cout <<endl<<"Informacion del punto 3d:"<<endl;
    cout <<"X:"<<p1->getX()<<endl;
    cout <<"Y:"<<p1->getY()<<endl;
    cout <<"Z:"<<p1->getZ()<<endl;


    return (0);
}
