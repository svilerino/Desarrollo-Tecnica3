#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include "Lista.h"
#include "Nodo.h"
#include <X11/Xlib.h>
#include <string.h>
#define VTN_X 600
#define VTN_Y 600


using namespace std;

Lista::Lista(){
    inicio=NULL;
}

void Lista::addNodo(char d){
    Nodo *aux,*nuevo;
    aux=inicio;
    nuevo=new Nodo(d);
    if(nuevo==NULL){
         cerr <<"Error, no hay memoria"<<endl;
         exit(1);
    }
    if(aux==NULL){
        inicio=nuevo;
    }else{
        while(aux->sig!=NULL)
            aux=aux->sig;
        aux->sig=nuevo;
        nuevo->ant=aux;
    }
}

void Lista::printLista(){
    Nodo *aux=inicio;
    while(aux!=NULL){
        cout <<"Direccion Anterior: ("<<aux->ant<<")\n\t\tDato:"<<aux->dato<<"\nDireccion Actual: ("<<aux<<")\nDireccion Siguiente: ("<<aux->sig<<")"<<endl<<endl;
        aux=aux->sig;
    }
}

void Lista::dltLst(Nodo*pri){
    Nodo *aux=pri;
    if(aux!=NULL){
        dltLst(aux->sig);
    cout <<"Direccion Anterior: ("<<aux->ant<<")\n\tDato:"<<aux->dato<<"\nDireccion Actual: ("<<aux<<")\nDireccion Siguiente:"<<aux->sig<<endl<<"ELIMINADO."<<endl<<endl;
    delete aux;
    aux=NULL;
    }
}

void Lista::dltLista(){
    dltLst(inicio);
    inicio=NULL;
}

void Lista::paintLista(){
    /*Nodo *aux=inicio;
    Display *d;
    int s=0,cont=0,a=0;
    char dirsig[25],dato[25],dirant[25];
    Window w;
    XEvent e;
    XColor color;
    color.flags=DoRed|DoBlue|DoGreen;
    color.pad=0;
    color.green=color.blue=color.red=0;
    d=XOpenDisplay(NULL);
    if(d==NULL){
        cerr<<"Error X11"<<endl;
        exit(1);
    }
    s=DefaultScreen(d);
    w = XCreateSimpleWindow(d,RootWindow(d,s),10,10,VTN_X,VTN_Y,1,BlackPixel(d,s),BlackPixel(d,s));
    XSelectInput(d,w,ExposureMask|ButtonPressMask|KeyPressMask);
    XMapWindow(d,w);
    while(1){
        XNextEvent(d,&e);
        if(e.type==KeyPress)
            break;
        if(e.type==ButtonPress)
            break;
        if(e.type==Expose){
            while(aux!=NULL){
                cont++;
                aux=aux->sig;
            }
            aux=inicio;
            while(aux!=NULL){

                memset(dirant,'\0',25);
                memset(dirsig,'\0',25);
                memset(dato,'\0',25);
                sprintf(dirant,"%p",aux->ant);
                sprintf(dirsig,"%p",aux->sig);
                sprintf(dato,"%c",aux->dato);

                color.red=0;
                color.blue=65535;
                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.red=color.blue=0;

                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+VTN_Y/16,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.blue=0;
                color.red=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+VTN_Y/16+VTN_Y/16,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.blue=0;
                color.red=0;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+30,VTN_Y/8+VTN_Y/16+25,(const char*)&dirant,strlen((const char*)&dirant));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+30,VTN_Y/8+VTN_Y/16+VTN_Y/16+25,(const char*)&dirsig,strlen((const char*)&dirsig));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+5,VTN_Y/8+VTN_Y/16-15,(const char*)&dato,strlen((const char*)&dato));

                aux=aux->sig;
                a++;
            }
        }
    }
    XCloseDisplay(d);*/

    Nodo *aux=inicio;
    Display *d;
    int s=0,cont=0,a=0;
    int corry=0;
    char dirsig[25],dato[25],dirant[25],diract[25];
    Window w;
    XEvent e;
    XColor color;
    color.flags=DoRed|DoBlue|DoGreen;
    color.pad=0;
    color.green=color.blue=color.red=0;
    d=XOpenDisplay(NULL);
    if(d==NULL){
        cerr<<"Error X11"<<endl;
        exit(1);
    }
    s=DefaultScreen(d);
    w = XCreateSimpleWindow(d,RootWindow(d,s),10,10,VTN_X,VTN_Y,1,BlackPixel(d,s),BlackPixel(d,s));
    XSelectInput(d,w,ExposureMask|ButtonPressMask|KeyPressMask);
    XMapWindow(d,w);
    while(1){
        XNextEvent(d,&e);
        if(e.type==KeyPress)
            break;
        if(e.type==ButtonPress)
            break;
        if(e.type==Expose){
            while(aux!=NULL){
                cont++;
                aux=aux->sig;
            }
            aux=inicio;
            while(aux!=NULL){

                memset(dirant,'\0',25);
                memset(diract,'\0',25);
                memset(dirsig,'\0',25);
                memset(dato,'\0',25);
                sprintf(dirant,"%p",aux->ant);
                sprintf(dirsig,"%p",aux->sig);
                sprintf(dato,"%c",aux->dato);
                sprintf(diract,"%p",aux);


                color.red=0;
                color.blue=65535;
                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),corry+VTN_Y/8,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.red=color.blue=0;

                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),corry+VTN_Y/8+VTN_Y/16,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.blue=0;
                color.red=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),corry+VTN_Y/8+VTN_Y/16+VTN_Y/16,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.red=0;
                color.blue=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),corry+VTN_Y/8+VTN_Y/16+VTN_Y/16+VTN_Y/16,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);


                color.green=color.blue=0;
                color.red=32768;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+20,corry+VTN_Y/8+VTN_Y/16+25,(const char*)&dirant,strlen((const char*)&dirant));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+20,corry+VTN_Y/8+VTN_Y/16+VTN_Y/16+25,(const char*)&dirsig,strlen((const char*)&dirsig));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+5,corry+VTN_Y/8+VTN_Y/16-15,(const char*)&dato,strlen((const char*)&dato));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+20,corry+VTN_Y/8+VTN_Y/16+VTN_Y/16+VTN_Y/16+25,(const char*)&diract,strlen((const char*)&diract));

                aux=aux->sig;
                a++;

                if(a>=4){
                    a=0;
                    corry+=190;
                    //cout <<"a: "<<a<<endl<<"corry: "<<corry<<endl;
                }
            }
        }
    }
    XCloseDisplay(d);
}

int Lista::CalculaX(int cantnodos){
    if(cantnodos>=4){
        return(VTN_X/4);
    }else{
        return(VTN_X/cantnodos);
    }
}

void Lista::dltNodo(char data){
    Nodo *aux=inicio;
    cout <<"Dato a buscar: "<<data<<endl;
    while((aux!=NULL)&&(aux->dato!=data))
        aux=aux->sig;
    if(aux==NULL){
        cout <<"Nodo no encontrado"<<endl;
    }else{
        if(aux->ant==NULL){//primer nodo
            if(aux->sig==NULL){//unico nodo
                delete aux;
                inicio=NULL;
            }else{
                aux->sig->ant=NULL;
                inicio=aux->sig;
                delete aux;
                aux=NULL;
            }
        }else{
            if(aux->sig==NULL){//ultimo nodo
                aux->ant->sig=NULL;
                delete aux;
                aux=NULL;
            }else{//nodo del medio
                aux->sig->ant=aux->ant;
                aux->ant->sig=aux->sig;
                delete aux;
                aux=NULL;
            }
        }
        cout <<"Nodo eliminado."<<endl;
    }
}
