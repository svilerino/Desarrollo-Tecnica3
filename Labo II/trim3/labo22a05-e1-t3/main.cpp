/*--------------------------------------------------------------------------------
Evaluación de Laboratorio II - 3er. Trimestre - Grupo A
--------------------------------------------------------------------------------
Enunciado:
---------

Hacer un programa que permita implementar una lista simplemente encadenada,
donde el área de datos estará compuesta por un objeto de la clase Matriz.

En la lista se deberán hacer las inserciones de los nodos de manera ordenada por
la suma de todos los elementos de la matriz existente como propiedad de la clase
Matriz. Dicha suma la proporcionará el método << int obtenerSuma(); >>. La
matriz en todos los casos deberá ser de 3 filas por 3 columnas y debe ser
cargada con elementos enteros seleccionados al azar.

El programa debe tener un menú con las siguientes opciones:

    1) Agregar Nodo
    2) Eliminar Nodo
    3) Eliminar Lista Recursivamente
    4) Mostrar Lista Gráficamente
    0) Salir
--------------------------------------------------------------------------------
NOTAS:
-----

    - El proyecto llevará el nombre << labo22axx-e1-t3 >> de manera excluyente.
    - Al finalizar la evaluación comprimir la carpeta del proyecto con el mismo
      nombre y con extensión << .tar.gz >> en la carpeta raíz de su cuenta.
--------------------------------------------------------------------------------*/

#include <iostream>
#include "Matriz.h"
#include <stdlib.h>
#include <X11/Xlib.h>
#include <string.h>
#define VTN_X 600
#define VTN_Y 600

using namespace std;

typedef struct nod{
    Matriz *mat;
    struct nod *sig;
}NODO;

void addNodo(NODO**);
void dltNodo(int,NODO*);
void dltLista(NODO*);
void paintLista(NODO*);
void printLista(NODO*);
int CalculaX(int);

int main(int argc,char *argv[]){
    NODO *pri=NULL;
    int opcion=0;
    do{
        system("clear");
        cout <<"Menu::labo22a22-e1-t3\n\n\t1) Agregar Nodo\n\t2) Eliminar Nodo\n\t3) Eliminar Lista Recursivamente\n\t4) Mostrar Lista Gráficamente\n\t0) Salir\nSu opcion:"<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                break;
            case 1://Agrega nodo
                addNodo(&pri);
                break;
            case 2://Elimina nodo
                dltNodo(0,pri);
                break;
            case 3://Elimina Lista
                dltLista(pri);
                pri=NULL;
                break;
            case 4://Mostrar Lista
                printLista(pri);
                paintLista(pri);
                break;
            default:
                cout<<"Opcion Invalida(0-5)"<<endl;
        }
        cout<<"Presione una tecla para continuar."<<endl;
        getchar();
        getchar();
    }while(opcion!=0);
    return(0);
}

void addNodo(NODO **pri){
    NODO *aux,*nuevo;
    aux=*pri;
    int ri=0,rf=0;
    nuevo=new NODO;
    if(nuevo!=NULL){
        cout<<"Ingrese Rango Inicial para llenar la matriz "<<endl;
        cin >>ri;
        cout<<"Ingrese Rango Final para llenar la matriz "<<endl;
        cin >>rf;
        nuevo->mat=new Matriz(ri,rf);
        nuevo->sig=NULL;
        if(aux==NULL){
            *pri=nuevo;
        }else{
            if(aux->mat->ObtenerSuma()>nuevo->mat->ObtenerSuma()){
                nuevo->sig=aux;
                *pri=nuevo;
            }else{
                while((aux->sig!=NULL)&&(aux->sig->mat->ObtenerSuma()<nuevo->mat->ObtenerSuma()))
                    aux=aux->sig;
                nuevo->sig=aux->sig;
                aux->sig=nuevo;
            }
        }
    }else{
        cerr<<"Error. No hay Memoria."<<endl;
    }
}
void dltNodo(int numero,NODO *pri){
    /*NODO *aux=pri;
    int a=0;
    while((aux->sig!=NULL)&&(a<numero)){
        a++;
        aux=aux->sig;
    }
    if(aux==NULL){
        cout <<"Nodo no encontrado"<<endl;
    }else{
        if(aux->sig==NULL){

        }
    }*/
}
void dltLista(NODO *pri){
    NODO *aux=pri;
    if(aux!=NULL){
        dltLista(aux->sig);
    cout <<"Direccion Actual: ("<<aux<<") Suma: "<<aux->mat->ObtenerSuma()<<"\n Direccion Siguiente: ( "<<aux->sig<<" ) "<<endl<<"ELMINADO."<<endl;
    delete aux;
    aux=NULL;
    }
}

void printLista(NODO *pri){
    NODO *aux=pri;
    while(aux!=NULL){
        cout <<"Direccion Actual: ("<<aux<<") Suma: "<<aux->mat->ObtenerSuma()<<"\n Direccion Siguiente: ( "<<aux->sig<<" )"<<endl<<endl;
        aux=aux->sig;
    }
}

void paintLista(NODO *pri){
    NODO *aux=pri;
    Display *d;
    int s=0,cont=0,a=0;//,b=0;
    char dirsig[25],dato[25];
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
    w = XCreateSimpleWindow(d,RootWindow(d,s),10,10,VTN_X,VTN_Y,1,BlackPixel(d,s),WhitePixel(d,s));
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
            aux=pri;
            while(aux!=NULL){

                memset(dirsig,'\0',25);
                memset(dato,'\0',25);
                sprintf(dirsig,"%p",aux->sig);
                sprintf(dato,"Valor: %i",aux->mat->ObtenerSuma());


                color.red=color.green=0;

                color.blue=45000;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.red=color.blue=0;

                color.green=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XFillRectangle(d,w,DefaultGC(d,s),a*CalculaX(cont),VTN_Y/8+VTN_Y/16+5,CalculaX(cont)-CalculaX(cont)/2,VTN_Y/16);

                color.green=color.blue=0;
                color.red=65535;
                XAllocColor(d,DefaultColormap(d,s),&color);
                XSetForeground(d,XDefaultGC(d,s),color.pixel);
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4,VTN_Y/8+VTN_Y/16+25,"-->>",strlen("-->>"));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+30,VTN_Y/8+VTN_Y/16+25,(const char*)&dirsig,strlen((const char*)&dirsig));
                XDrawString(d,w,DefaultGC(d,s),a*CalculaX(cont)+CalculaX(cont)/3-CalculaX(cont)/4+5,VTN_Y/8+VTN_Y/16-15,(const char*)&dato,strlen((const char*)&dato));

                aux=aux->sig;
                a++;
            }
        }
    }
    XCloseDisplay(d);
}

int CalculaX(int cantnodos){
    return(VTN_X/cantnodos);
}
