#include "Poligono.h"
#include <X11/Xlib.h>
#include <iostream>
#include <stdlib.h>
#include <math.h>
#define PI 4*atan(1.0)
#define VTN_X 500
#define VTN_Y 500
#define FASE 0

using namespace std;

Poligono::Poligono(int clados,float clargolados){
    lados=clados;
    largolados=clargolados;
}

float Poligono::getPerimetro(){
    return(lados*largolados);
}

float Poligono::getApotema(){
    float ap=0;
    ap=(float)(tan((PI-(2*PI/lados))/2))*(largolados/2);
    return(ap);
}

float Poligono::getSuperficie(){
    return((Poligono::getPerimetro()*Poligono::getApotema())/2.0);
}

int Poligono::getLados(){
    return(lados);
}

float Poligono::getLargoLado(){
    return(largolados);
}

float Poligono::Radian(float grado){
    return(grado*PI/180);
}

void Poligono::metGraficar(){
    int RADIO=sqrt(pow(getApotema(),2)+pow(getApotema(),2));
    int SCALEW=VTN_X,SCALEH=VTN_Y;
    float punto=0,vp=0,x=10,y=10;//lineas
    int a=0,s=0;//Num pantalla
    Display *d;//pantalla
    Window w;//Ventana
    XEvent e;//Eventos
    d=XOpenDisplay(NULL);
    if (d==NULL){
        cerr<<"No se puede abrir X11."<<endl;
        exit(1);
    }
    s=DefaultScreen(d);
    w=XCreateSimpleWindow(d,RootWindow(d,s),10,10,VTN_X,VTN_Y,1,BlackPixel(d,s),WhitePixel(d,s));
    XSelectInput(d,w,ExposureMask|KeyPressMask|ButtonPressMask);
    XMapWindow(d,w);
    while(1){
        XNextEvent(d,&e);
        if(e.type==KeyPress)
            break;
        if(e.type==ButtonPress){
            switch(e.xbutton.button){
                case 4:
                    cout <<"Scroll UP"<<endl;
                    SCALEH+=5;
                    SCALEW+=5;
                    RADIO+=5;
                    XClearWindow(d,w);
                    e.type=Expose;
                    break;
                case 5:
                    if((SCALEW>=5)&&(SCALEH>=5)&&(RADIO>=5)){
                        cout <<"Scroll DOWN"<<endl;
                        SCALEH-=5;
                        SCALEW-=5;
                        RADIO-=5;
                        XClearWindow(d,w);
                        e.type=Expose;
                    }
                    break;
            }
        }
        if(e.type==Expose){
            vp=0;punto=0;
            cout <<"\nPosicion en la circunferecia trigonometrica:"<<endl<<endl;
            for(a=0;a<lados;a++){
                cout <<"\tLado numero: "<<(a+1)<<": \n\t\tSexagesimal: "<<punto+FASE<<"\n\t\tRadian: "<<Radian(punto+FASE)<<endl;
                punto+=(360/lados);
                cout <<"Radio: "<<RADIO<<endl;
                x=RADIO*cos(Radian(punto+FASE))+SCALEW/2;
                y=RADIO*sin(Radian(punto+FASE))+SCALEH/2;
                XDrawLine(d,w,DefaultGC(d,s),RADIO*cos(Radian(vp+FASE))+SCALEW/2,RADIO*sin(Radian(vp+FASE))+SCALEW/2,x,y);
                vp=punto;
            }
        }
    }
    XCloseDisplay(d);
}


