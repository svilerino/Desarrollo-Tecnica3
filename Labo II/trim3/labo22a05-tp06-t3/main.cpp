#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include "Lista.h"

using namespace std;

int main(int argc,char*argv[]){
    int opcion=0;
    char data='\0',dat='\0';
    Lista *miLista=new Lista();
    do{
        system("clear");
        cout<<"Menu::TP06-labo22a05\n\t0.-Salir\n\t1.-Agregar Nodo\n\t2.-Eliminar Nodo\n\t3.-Eliminar Lista(Recursivamente)\n\t4.-Graficar Lista(X11)\n\t5.-Imprimir Lista(Consola)"<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                break;
            case 1:
                cout <<"Nuevo Nodo>>Ingrese Datos\n\tIngrese Datos:";
                cin >>data;
                miLista->addNodo(data);
                break;
            case 2:
                cout <<"Eliminar Nodo>>\n\tIngrese Dato del Nodo a eliminar: ";
                cin >>dat;
                miLista->dltNodo(dat);
                break;
            case 3:
                cout <<"Eliminar Lista>>"<<endl;
                miLista->dltLista();
                break;
            case 4:
                cout <<"Graficar Lista>>"<<endl;
                miLista->paintLista();
                break;
            case 5:
                cout <<"Imprimir Lista>>"<<endl;
                miLista->printLista();
                break;
            default:
                cout <<"Opcion Invalida(0-5)"<<endl;
        }
        cout <<"Presione una tecla para continuar."<<endl;
        getchar();
        getchar();
    }while(opcion!=0);
    return(0);
}
