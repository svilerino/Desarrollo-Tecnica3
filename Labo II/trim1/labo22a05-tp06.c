/*
Alumno: Vileriño, Silvio
Curso: 5to 2da
Fecha:18/05/09
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <curses.h>
#include <ncurses.h>

int **CreaMatriz(int,int);
void Cargar(int**,int,int);
void Mostrar(int**,int,int,int,int);
void Laberinto(int**,int,int,int,int);
void colores();

int main(){
system("clear");
srand(time(NULL));
int filas=0,columnas=0,opcion=0,a=0;
int **mat;
initscr();
colores();
wbkgd(stdscr,COLOR_PAIR(3));
refresh();
do{
	erase();
	refresh();
	wprintw(stdscr,"\nMenu\n\t1.-Generar Laberinto\n\t2.-Buscar Salidas\n\t0.-Salir\n");
	refresh();
	scanw("%i",&opcion);
	switch(opcion){
		case 1:
			wprintw(stdscr,"\nIngrese Filas:");
			refresh();
			scanw("%i",&filas);
			wprintw(stdscr,"\nIngrese Columnas:");
			refresh();
			scanw("%i",&columnas);
			mat=CreaMatriz(filas,columnas);
			Cargar(mat,filas,columnas);
			Mostrar(mat,filas,columnas,0,0);	
			wprintw(stdscr,"\nPresione cualquier tecla.");		
			refresh();
			getch();
			break;
		case 2:
				Laberinto(mat,filas,columnas,0,a);
				wprintw(stdscr,"\nPresione cualquier tecla.");		
				refresh();
				getch();
			break;
		case 0:
				wprintw(stdscr,"\nAdios!\n");
				refresh();
				wprintw(stdscr,"\nPresione cualquier tecla.");		
				refresh();
				getch();
			break;
		default:
			wprintw(stdscr,"\nOpcion Invalida");
			refresh();
			wprintw(stdscr,"\nPresione cualquier tecla.");		
			refresh();
			getch();

	}
}while(opcion!=0);
endwin();
return(0);
}

int **CreaMatriz(int filas,int columnas){
int a=0;
	int **Mat=malloc(sizeof(int*)*filas);
	while(a<filas){
		Mat[a]=malloc(sizeof(int)*columnas);
		a++;
	}
		return(Mat);
}

void Cargar(int** Matriz,int filas,int columnas){
int a=0,b=0;
while(a<filas){
	while(b<columnas){
		Matriz[a][b]=rand() %2;
		b++;
	}
	b=0;
	a++;	
}
}

void Mostrar(int** Matriz,int filas,int columnas,int cx,int cy){
int a=0,b=0;
erase();
refresh();
while(a<filas){
	while(b<columnas){
		if((a==cx)&&(b==cy)){
			attron(COLOR_PAIR(4) | A_BLINK);
			wprintw(stdscr,"|_%i_|",Matriz[a][b]);			
			refresh();
			attroff(COLOR_PAIR(4) | A_BLINK);
		}else{
			wprintw(stdscr,"|_%i_|",Matriz[a][b]);
			refresh();
		}
		b++;
	}
	wprintw(stdscr,"\n");
	refresh();
	b=0;
	a++;	
}
}

void Laberinto(int **mat,int filas,int columnas,int px,int py){
int cx=-1,cy=-1;
if ((mat[px][py]==0)&&(py==filas-1)){
	mat[px][py]=1;
	wprintw(stdscr,"\n\tHay Salida del laberinto en (%i ; %i)\n",px+cx,py+cy);
	refresh();
}else{
	mat[px][py]=1;
	while(cx<2){
		while(cy<2){
			if(cx+cy!=0){
				if((px+cx>=0)&&(px+cx<columnas-1)){
					if((py+cy>=0)&&(py+cy<filas-1)){						
						if (mat[px+cx][py+cy]==0){
							Mostrar(mat,filas,columnas,px+cx,py+cy);
							wprintw(stdscr,"\n\tHay Salidas en (%i ; %i)\n",px+cx,py+cy);
							refresh();
							sleep(1);
							return(Laberinto(mat,filas,columnas,px+cx,py+cy));
						}
					}
				}
			}
			cy++;
		}
		cy=-1;
		cx++;
	}
	mat[px][py]=0;
}
}

void colores(){
if (has_colors){
	start_color();
	init_pair(1,COLOR_RED,COLOR_YELLOW);
	init_pair(2,COLOR_BLUE,COLOR_WHITE);
	init_pair(3,COLOR_BLACK,COLOR_CYAN);	
	init_pair(4,COLOR_RED,COLOR_BLACK);	
}
}

