/*
Alumno: Vileriño, Silvio
Curso : 5to 2da
*/

#include <iostream>
#include <stdlib.h>
#include "Matriz.h"
#include <time.h>

using namespace std;

int main(int argc,char *argv[]){
Matriz *mat;
srand(time(NULL));
int opcion=0,opcionb=0,var_fil=0,var_col=0,var_rini=0,var_rfin=0,sentido=0;
do{
        system("clear");
        cout <<"Menu::TP02::labo22a05\n\nIngrese Opcion:\n\t0.-Salir\n\t1.-Crear Matriz\n\t2.-Mostrar Matriz\n\t3.-Graficar Matriz\n\t4.-Ordenar Matriz"<<endl<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                cout <<endl<<"Adios!"<<endl;
                break;
            case 1:
                system("clear");
                opcionb=99;
                    system("clear");
                    cout <<"Ingrese SubOpcion:\n\t0.-Volver al menu Anterior\n\t1.-Matriz 5x5 rellena de 0 y 1\n\t2.-Personalizada"<<endl;
                    cin >>opcionb;
                    switch(opcionb){
                        case 0:
                            break;
                        case 1:
                            mat=new Matriz();
                            break;
                        case 2:
                            cout<<"Ingrese Filas"<<endl;
                            cin >>var_fil;
                            cout<<"Ingrese Columnas"<<endl;
                            cin >>var_col;
                            cout<<"Ingrese Rango Inicial"<<endl;
                            cin >>var_rini;
                            cout<<"Ingrese Rango Final"<<endl;
                            cin >>var_rfin;
                            mat=new Matriz(var_fil,var_col,var_rini,var_rfin);
                        default:
                            cout <<"Opcion Invalida(0-2)"<<endl;
                    }
                break;
            case 2:
                system("clear");
                mat->printMatriz();
                getchar();
                getchar();
                break;
            case 3:
                mat->paintMatriz();
                break;
            case 4:
                opcionb=99;
                system("clear");
                cout <<"Seleccione Ordenamiento:\n\t0.-Volver al menu anterior\n\t1.-Completo\n\t2.-Filas\n\t3.-Columnas\n\t4.-Espiral"<<endl;
                cin >>opcionb;
                switch(opcionb){
                    case 0:
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    system("clear");
                    cout<<"Sentido Ordenamiento: (0 Creciente / 1 Decreciente)"<<endl;
                    cin >>sentido;
                    switch(sentido){
                        case 0:
                        case 1:
                            mat->ordMat(opcionb,sentido);
                            break;
                        default:
                            cout <<"Opcion Invalida!."<<endl;
                    }
                        break;
                    default:
                        cout <<"Opcion Invalida.(0-4)";
                }
                break;
            default:
                cout <<endl<<"Opcion Invalida (0-5)"<<endl;
        }
}while(opcion!=0);
return (0);
}

