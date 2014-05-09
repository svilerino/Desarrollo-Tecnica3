#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <curses.h>

void colores();
void Llenar(int*,int);
void Imprimir(int*,int);
void tartaglia(int*,int,int,int);

int main(){
initscr();
int nivel=0,opcion=0;
erase();
colores();
wbkgd(stdscr,COLOR_PAIR(1));
do{
	printw("\nIngrese opcion:\n\t1.-Tartaglia\n\t0.-Salir\nSu opcion:");
	scanw("%i",&opcion);
	switch(opcion){
		case 1:
			printw("\nIngrese Nivel: ");scanw("%i",&nivel);
			int *vec=malloc(sizeof(int)*nivel+1);
			Llenar(vec,nivel+1);
			vec[0]=1;
			attron(COLOR_PAIR(2));
			printw("\n0\t 1\n");
			attroff(COLOR_PAIR(2));
			tartaglia(vec,nivel+1,nivel+1,1);
			break;
		case 0:
			printw("\nAdios!\n");
			break;
		default:
			printw("\nOpcion Invalida.\n");
	}
}while(opcion!=0);
endwin();
return(0);
}

void Llenar(int* vec,int elem){
int a=0;
while(a<elem){
	vec[a]=0;
	a++;
}
}

void Imprimir(int* vec,int elem){
int a=0;
printw("%i\t",elem-1);
while(a<elem){
	attron(COLOR_PAIR(2));
	printw(" %i ",vec[a]);
	attroff(COLOR_PAIR(2));
	a++;
}
printw("\n");
}

void tartaglia(int *vec,int grado, int elementos, int maximo){
if(grado>maximo){
	if(elementos>0){
		vec[elementos]=vec[elementos-1]+vec[elementos];
		tartaglia(vec,grado,elementos-1,maximo);
	}else{
		Imprimir(vec,maximo+1);
		tartaglia(vec,grado,maximo+1,maximo+1);
	}
}
}

void colores(){
if(has_colors){
	start_color();
	init_pair(1,COLOR_BLACK,COLOR_CYAN);
	init_pair(2,COLOR_BLACK,COLOR_CYAN);
}
}
