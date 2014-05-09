/*
Alumno: Vileriño, Sivio
Curso: 5to 2da
*/

#include <iostream>
#include "Poligono.h"
#include <stdlib.h>

using namespace std;

int main(int argc,char *argv[]){
    int opcion=0;
    do{
        system("clear");
        Poligono *poli;
        int var_lados=0;
        float lar_lados=0;
        cout<<"Menu::TP01::labo22a05\n\n\t0.-Salir\n\t1.-Graficar Nuevo Poligono"<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                break;
            case 1:
                cout <<"Ingrese Numero de lados del Poligono:"<<endl;
                cin >>var_lados;
                cout <<"Ingrese largo de los lados"<<endl;
                cin >>lar_lados;

                poli=new Poligono(var_lados,lar_lados);
                cout << endl << "Info del Poligono Creado:\nCantidad de Lados: "<<poli->getLados()<<endl<<endl;
                cout << "Info especifica de lados:"<<endl;
                    cout <<"Apotema: " <<poli->getApotema()<<endl;
                    cout <<"Largo de los lados: "<<poli->getLargoLado()<<endl;
                    cout <<"Perimetro: "<<poli->getPerimetro()<<endl;
                    cout <<"Superficie: " <<poli->getSuperficie()<<endl;
                    poli->metGraficar();
        }
    }while(opcion!=0);
    return (0);
}
