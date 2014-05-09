/*
Alumno:Vileriño, Silvio
Curso 5to 2da
*/
#include <iostream>
#include <string.h>
#include <X11/Xlib.h>
#include <stdlib.h>
#define VTN_X 600
#define VTN_Y 600
using namespace std;
typedef struct nod{
    char dato;
    struct nod *sig;
}NODO;

void agregarNodo(char,NODO**);
void mostrarLista(NODO*);
void graficaLista(NODO*);
int CalculaX(int);
void paintLista(NODO*);

int main(int argc,char *argv[]){
    char dato;
    NODO *primero=NULL;
    do{
        cout <<"Ingrese Dato: (# para terminar)"<<endl;
        cin >>dato;
        if(dato!='#')
            agregarNodo(dato,&primero);
    }while(dato!='#');
    mostrarLista(primero);
    paintLista(primero);
    return (0);
}

void agregarNodo(char dato,NODO **pri){
    NODO *aux,*nuevo;
    aux=*pri;
    nuevo=new NODO;
    if(nuevo!=NULL){
        nuevo->dato=dato;
        nuevo->sig=NULL;
        if(aux==NULL){
            *pri=nuevo;
        }else{
            if(aux->dato>nuevo->dato){
                nuevo->sig=aux;
                *pri=nuevo;
            }else{
                while((aux->sig!=NULL)&&(aux->sig->dato<nuevo->dato))
                    aux=aux->sig;
                nuevo->sig=aux->sig;
                aux->sig=nuevo;
            }
        }
    }else{
        cerr<<"No hay memoria."<<endl;
        exit(1);
    }
}
void mostrarLista(NODO *pri){
    NODO *aux=pri;
    while(aux!=NULL){
        cout <<"Direccion Actual: ("<<aux<<")";
        cout <<"\tDireccion Siguiente: ("<<aux->sig<<")"<<endl;
        cout <<"Dato: "<<aux->dato<<endl<<endl;
        aux=aux->sig;
    }
}

void paintLista(NODO *inicio){
    NODO *aux=inicio;
    Display *d;
    int s=0,cont=0,a=0;
    int corry=0;
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
                sprintf(dirant,"%p",aux);
                sprintf(dirsig,"%p",aux->sig);
                sprintf(dato,"%c",aux->dato);

                color.red=0;
                color.blue=65535;
                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+corry,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.red=color.blue=0;

                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+VTN_Y/16+corry,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.blue=0;
                color.red=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+VTN_Y/16+VTN_Y/16+corry,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=33569;
                color.blue=45535;
                color.red=22768;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+20,corry+VTN_Y/8+VTN_Y/16+25,(const char*)&dirant,strlen((const char*)&dirant));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+20,corry+VTN_Y/8+VTN_Y/16+VTN_Y/16+25,(const char*)&dirsig,strlen((const char*)&dirsig));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+5,corry+VTN_Y/8+VTN_Y/16-15,(const char*)&dato,strlen((const char*)&dato));

                aux=aux->sig;
                a++;
                if(a>=4){
                    a=0;
                    corry+=150;
                    //cout <<"a: "<<a<<endl<<"corry: "<<corry<<endl;
                }
            }
        }
    }
    XCloseDisplay(d);
}


int CalculaX(int cantnodos){
    if(cantnodos>=4){
        return(VTN_X/4);
    }else{
        return(VTN_X/cantnodos);
    }
}
