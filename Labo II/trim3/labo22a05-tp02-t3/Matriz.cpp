#include "Matriz.h"
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <X11/Xlib.h>
#define VTN_X 600
#define VTN_Y 600

using namespace std;

Matriz::Matriz(){
    int a=0;
    filas=5;
    columnas=5;
    rf=1;
    Mat=new int*[filas];
    for(a=0;a<filas;a++)
        Mat[a]=new int[columnas];
    fillMat();
    paintMatriz();
}

Matriz::Matriz(int fil,int col,int rini,int rfin){
    int a=0;
    filas=fil;
    columnas=col;
    rf=rfin;
    Mat=new int*[filas];
    for(a=0;a<filas;a++)
        Mat[a]=new int[columnas];
    fillMat(filas,columnas,rini,rfin);
    paintMatriz();
}

void Matriz::fillMat(){
int a=0,b=0;
for(a=0;a<5;a++){
    for(b=0;b<5;b++){
        Mat[a][b]=rand()%2;
    }
}
}

void Matriz::fillMat(int fil,int col,int rini,int rfin){
int a=0,b=0;
for(a=0;a<fil;a++){
    for(b=0;b<col;b++){
        Mat[a][b]=(rand()%(rfin-rini+1))+rini;
    }
}
}

Matriz::~Matriz(){
    int a=0;
    for(a=0;a<filas;a++)
        delete Mat[a];
    delete Mat;
}

int Matriz::getElemento(int fil,int col){
    return(Mat[fil][col]);
}

int Matriz::getFilas(){
    return(filas);
}

int Matriz::getColumnas(){
    return(columnas);
}

void Matriz::printMatriz(){
    int a=0,b=0;
for(a=0;a<filas;a++){
    for(b=0;b<columnas;b++){
        cout <<"|_"<<Mat[a][b]<<"_|";
    }
    cout <<endl;
}
}

void Matriz::paintMatriz(){
    char *numero=new char[5];
    int a=0,b=0;
    int s=0;//Num pantalla
    Display *d;//pantalla
    Window w;//Ventana
    XEvent e;//Eventos
    XColor color;
    color.flags=DoRed | DoBlue | DoGreen;
    color.pad=0;

    d=XOpenDisplay(NULL);
    if (d==NULL){
        cerr<<"No se puede abrir X11."<<endl;
        exit(11);
    }
    s=DefaultScreen(d);
    w=XCreateSimpleWindow(d,RootWindow(d,s),10,10,VTN_X,VTN_Y,1,BlackPixel(d,s),WhitePixel(d,s));
    XSelectInput(d,w,ExposureMask|KeyPressMask|ButtonPressMask);
    XMapWindow(d,w);
    while(1){
        XNextEvent(d,&e);
        if(e.type==KeyPress)
            break;
        if(e.type==ButtonPress)
            break;
        if(e.type==Expose){
            for(a=0;a<filas;a++){
                for(b=0;b<columnas;b++){
                    memset(numero,'\0',5);
                    sprintf(numero,"%i",Mat[b][a]);

                    color.blue=Mat[b][a]*65535/rf;
                    color.red=0;
                    color.green=0;

                    XAllocColor(d,DefaultColormap(d,s),&color);
                    XSetForeground(d,DefaultGC(d,s),color.pixel);
                    XFillRectangle(d,w,DefaultGC(d,s),a*EscalaXWindow(),b*EscalaYWindow(),EscalaXWindow(),EscalaYWindow());

                    color.red=5000;
                    color.green=65535;
                    color.blue=65535;
                    XAllocColor(d,DefaultColormap(d,s),&color);

                    XSetForeground(d,XDefaultGC(d,s),color.pixel);
                    XDrawString(d,w,DefaultGC(d,s),a*EscalaXWindow()+CalculaXWindow(strlen(numero)),b*EscalaYWindow()+CalculaYWindow(strlen(numero)),numero,strlen(numero));
                }
            }
        }
    }
    XCloseDisplay(d);
}

void Matriz::ordMat(int opc,int sentido){
    int a=0,b=0,c=0;
    int *vec=new int[filas*columnas];
    switch(opc){
        case 1://Completa
            for(a=0;a<(filas*columnas)-1;a++){
                for(b=a;b<(filas*columnas);b++){
                    if(sentido==0){
                        if(Mat[a/columnas][a%columnas]>Mat[b/columnas][b%columnas]){
                            swapElem(&Mat[a/columnas][a%columnas],&Mat[b/columnas][b%columnas]);
                        }
                    }else{
                        if(Mat[a/columnas][a%columnas]<Mat[b/columnas][b%columnas]){
                            swapElem(&Mat[a/columnas][a%columnas],&Mat[b/columnas][b%columnas]);
                        }
                    }
                }
            }
            break;
        case 2://filas
            for(c=0;c<filas;c++){
                for(a=0;a<columnas-1;a++){
                    for(b=a;b<columnas;b++){
                        if(sentido==0){
                            if(Mat[c][a]>Mat[c][b]){
                                swapElem(&Mat[c][a],&Mat[c][b]);
                            }
                        }else{
                            if(Mat[c][a]<Mat[c][b]){
                                swapElem(&Mat[c][a],&Mat[c][b]);
                            }
                        }
                    }
                }
            }
            break;
        case 3://Columna
            for(c=0;c<columnas;c++){
                for(a=0;a<filas-1;a++){
                    for(b=a;b<filas;b++){
                        if(sentido==0){
                            if(Mat[a][c]>Mat[b][c]){
                                swapElem(&Mat[a][c],&Mat[b][c]);
                            }
                        }else{
                            if(Mat[a][c]<Mat[b][c]){
                                swapElem(&Mat[a][c],&Mat[b][c]);
                            }
                        }
                    }
                }
            }
            break;
        case 4://Espiral
            getEspMat(vec,sentido);
            setEspMat(vec);
            break;
    }
}

void Matriz::swapElem(int*a,int*b){
	int c=0;
	c=*a;
	*a=*b;
	*b=c;
}

int Matriz::CalculaXWindow(int largochar){
    return((((VTN_X-5)/filas)/2)-largochar/2);
}
int Matriz::CalculaYWindow(int largochar){
    return((((VTN_Y-5)/columnas)/2)-largochar/2);

}
int Matriz::EscalaXWindow(){
    return(VTN_X/filas);
}
int Matriz::EscalaYWindow(){
    return(VTN_Y/columnas);
}

void Matriz::getEspMat(int *vec,int sentido){
    int a=0,b=0,c=0;
    for(a=0;a<filas;a++){
        for(b=0;b<columnas;b++){
            vec[c]=Mat[a][b];
            c++;
        }
    }
    for(a=0;a<(filas*columnas)-1;a++){
        for(b=a;b<(filas*columnas);b++){
            if(sentido==0){
                if(vec[a]>vec[b]){
                    swapElem(&vec[a],&vec[b]);
                }
            }else{
                if(vec[a]<vec[b]){
                    swapElem(&vec[a],&vec[b]);
                }
            }
        }
    }
}

void Matriz::setEspMat(int *vec){
int a=0,contador=1;
int fi=0,ci=0,ff=filas-1,cf=columnas-1;
do{
    if(contador!=(filas*columnas)){
        for(a=ci;a<cf;a++){
            Mat[fi][a]=vec[contador-1];
            contador++;
        }
    }
    if(contador!=(filas*columnas)){
        for(a=fi;a<ff;a++){
            Mat[a][cf]=vec[contador-1];
            contador++;
        }
    }
    if(contador!=(filas*columnas)){
        for(a=cf;a>ci;a--){
            Mat[ff][a]=vec[contador-1];
            contador++;
        }
    }
    if(contador!=(filas*columnas)){
        for(a=ff;a>fi;a--){
            Mat[a][ci]=vec[contador-1];
            contador++;
        }
    }

    fi++;ff--;ci++;cf--;
}while(contador<(filas*columnas));
Mat[filas/2][columnas/2]=vec[filas*columnas-1];
}
