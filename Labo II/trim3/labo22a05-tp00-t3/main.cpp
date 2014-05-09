/*
Alumno: Vileriño, Silvio
Curso: 5to 2da
*/

#include <iostream>
#include <X11/Xlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


using namespace std;

int main(int argc,char *argv[]){
    Display *d;//pantalla
    Window w;//Ventana
    XEvent e;//Eventos
    char *msg=NULL;//Cartel
    int s;//Num pantalla
    msg=(char*)new char[30];
    memset(msg,'\0',30);
    strcpy(msg,"Hola Mundo X11!!\0");
    d=XOpenDisplay(NULL);
    if (d==NULL){
        cout <<stderr<<"No se puede abrir X11."<<endl;
        exit(1);
    }
    s=DefaultScreen(d);
    w=XCreateSimpleWindow(d,RootWindow(d,s),10,10,300,100,1,BlackPixel(d,s),WhitePixel(d,s));
    XSelectInput(d,w,ExposureMask|KeyPressMask|ButtonPressMask);
    XMapWindow(d,w);
    while(1){
        XNextEvent(d,&e);
        if(e.type==KeyPress)
            break;
        if(e.type==ButtonPress)
            break;
        if(e.type==Expose){
            XFillRectangle(d,w,DefaultGC(d,s),20,20,10,10);
            XDrawString(d,w,DefaultGC(d,s),10,10,msg,strlen(msg));
            XDrawLine(d,w,DefaultGC(d,s),10,70,100,70);
        }
    }
    XCloseDisplay(d);
    return (0);
}
