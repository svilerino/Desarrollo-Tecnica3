/*
Alumno: Silvo,Vileriño
Curso: 5to 2da.
*/
#include <iostream>
#include <stdlib.h>
#include <X11/Xlib.h>
#include <string.h>
#define VTN_X 600
#define VTN_Y 600

using namespace std;

typedef struct nod{
    char dato;
    struct nod *ant;
    struct nod *sig;
}NODO;

void addNodo(char,NODO**);
void dltNodo(char,NODO**);
void dltLista(NODO*);
void printLista(NODO*);
void paintLista(NODO*);
int CalculaX(int);

int main(int argc,char *argv[]){
    NODO *pri=NULL;
    int opcion=0;
    char data='\0',dat='\0';
    do{
        system("clear");
        cout<<"Menu::TP05-labo22a05\n\t0.-Salir\n\t1.-Agregar Nodo\n\t2.-Eliminar Nodo\n\t3.-Eliminar Lista(Recursivamente)\n\t4.-Graficar Lista(X11)\n\t5.-Imprimir Lista(Consola)"<<endl;
        cin >>opcion;
        switch(opcion){
            case 0:
                break;
            case 1:
                cout <<"Nuevo Nodo>>Ingrese Datos\n\tIngrese Datos:"<<endl;
                cin >>data;
                addNodo(data,&pri);
                break;
            case 2:
                cout <<"Eliminar Nodo>>\n\tIngrese Dato del Nodo a eliminar: "<<endl;
                cin >>dat;
                dltNodo(dat,&pri);
                break;
            case 3:
                cout <<"Eliminar Lista>>"<<endl;
                dltLista(pri);
                pri=NULL;
                break;
            case 4:
                cout <<"Graficar Lista>>"<<endl;
                paintLista(pri);
                break;
            case 5:
                cout <<"Imprimir Lista>>"<<endl;
                printLista(pri);
                break;
            default:
                cout <<"Opcion Invalida(0-5)"<<endl;
        }
        cout <<"Presione una tecla para continuar."<<endl;
        getchar();
        getchar();
    }while(opcion!=0);
    return (0);
}

void addNodo(char data,NODO **pri){
    NODO *aux,*nuevo;
    aux=*pri;
    nuevo=new NODO;
    if(nuevo!=NULL){
        nuevo->ant=NULL;
        nuevo->sig=NULL;
        nuevo->dato=data;
        if(aux==NULL){
            *pri=nuevo;
        }else{
            while(aux->sig!=NULL)
                aux=aux->sig;
            nuevo->ant=aux;
            aux->sig=nuevo;
        }
    }
}
void dltNodo(char data,NODO **inicio){
    NODO *aux=*inicio;
    cout <<"Dato a buscar: "<<data<<endl;
    while((aux!=NULL)&&(aux->dato!=data))
        aux=aux->sig;
    if(aux==NULL){
        cout <<"Nodo no encontrado"<<endl;
    }else{
        if(aux->ant==NULL){//primer nodo
            if(aux->sig==NULL){//unico nodo
                delete aux;
                aux=NULL;
                *inicio=NULL;
            }else{
                aux->sig->ant=NULL;//primer nodo
                *inicio=aux->sig;
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

void dltLista(NODO *pri){
    NODO *aux=pri;
    if(aux!=NULL){
        dltLista(aux->sig);
    cout <<"Direccion Anterior: ("<<aux->ant<<")\n\tDato:"<<aux->dato<<"\nDireccion Actual: ("<<aux<<")\nDireccion Siguiente:"<<aux->sig<<endl<<"ELIMINADO."<<endl<<endl;
    delete aux;
    aux=NULL;
    }
}
void printLista(NODO *pri){
    NODO *aux=pri;
    while(aux!=NULL){
        cout <<"Direccion Anterior: ("<<aux->ant<<")\n\tDato:"<<aux->dato<<"\nDireccion Actual: ("<<aux<<")\nDireccion Siguiente:"<<aux->sig<<endl<<endl;
        aux=aux->sig;
    }
}


void paintLista(NODO *inicio){
    NODO *aux=inicio;
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


int CalculaX(int cantnodos){
    if(cantnodos>=4){
        return(VTN_X/4);
    }else{
        return(VTN_X/cantnodos);
    }
}

