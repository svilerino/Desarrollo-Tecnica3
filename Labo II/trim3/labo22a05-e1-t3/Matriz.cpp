#include "Matriz.h"
#include <time.h>
#include <stdlib.h>
#include <iostream>

using namespace std;

Matriz::Matriz(int ri,int rf){
    int a=0;
    Mat=new int*[3];
    for(a=0;a<3;a++){
        Mat[a]=new int[3];
    }
    CargaMat(ri,rf);
}

Matriz::~Matriz(){
    int a=0;
    for(a=0;a<3;a++)
        delete [] Mat;
    delete Mat;
}

void Matriz::CargaMat(int ri,int rf){
    int a=0,b=0;
    srand(time(NULL));
    for(a=0;a<3;a++){
        for(b=0;b<3;b++){
            Mat[a][b]=(rand() % (rf-ri+1))+ri;
        }
    }
}

void Matriz::printMat(){
    system("clear");
    int a=0,b=0;
    for(a=0;a<3;a++){
        for(b=0;b<3;b++){
            cout <<"( "<<Mat[a][b]<<" )";
        }
        cout <<endl;
    }
}

int Matriz::ObtenerSuma(){
    int a=0,b=0,suma=0;
    for(a=0;a<3;a++){
        for(b=0;b<3;b++){
            suma+=Mat[a][b];
        }
    }
    return(suma);
}
