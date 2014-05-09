/*
Alumno: Vileriño, Silvio
Curso: 5to 2da.
*/
#include <iostream>
#include <stdlib.h>
#include "Triangulo.h"
#include "Cuadrado.h"

using namespace std;

int main(int argc,char *argv[]){
    int opcion=0;
    float lado=0.0;
    Triangulo *Tri;
    Cuadrado *Cuad;
    do{
        system("clear");
        cout<<"Menu::TP03-labo22a05\n\t0.-Salir\n\t1.-Triangulo\n\t2.-Cuadrado"<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                break;
            case 1:
                cout <<"Ingrese Largo de los lados:"<<endl;
                cin>>lado;
                Tri=new Triangulo(lado);
                cout<<"Superficie:"<<Tri->getSuperficie()<<endl;
                Tri->metGraficar();
                break;
            case 2:
                cout <<"Ingrese Largo de los lados:"<<endl;
                cin>>lado;
                Cuad=new Cuadrado(lado);
                cout<<"Superficie:"<<Cuad->getSuperficie()<<endl;
                Cuad->metGraficar();
                break;
            default:
                cout<<"Opcion Invalida"<<endl;
        }
        cout <<"Presione una tecla para continuar"<<endl;
        getchar();
        getchar();
    }while(opcion!=0);
    return (0);
}
