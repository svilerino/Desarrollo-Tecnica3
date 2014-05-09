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
#include <unistd.h>

int **CreaMatriz(int,int);
void Cargar(int**,int,int);
void Mostrar(int**,int,int,int,int);
void Laberinto(int**,int,int,int,int);
void colores();
void GuardaMat(int**,int,int);
int **CargaMat(int*,int*);

int main(){
system("clear");
srand(time(NULL));
int filas=0,columnas=0,opcion=0,a=0;
int **mat;
initscr();
colores();
wbkgd(stdscr,COLOR_PAIR(3));refresh();
do{
	erase();refresh();
	printw("\nMenu\n\t1.-Generar Matriz\n\t2.-Mostrar Soluciones\n\t3.-Cargar Matriz\n\t4.-Guardar Matriz\n\t5.-Ver Matriz\n\t0.-Salir\n");refresh();
	scanw("%i",&opcion);
	switch(opcion){
		case 0:
			printw("\nAdios!\n");refresh();
			printw("\nPresione cualquier tecla.");refresh();
			getch();
			break;
		case 1:
			printw("\nIngrese Filas:");refresh();
			scanw("%i",&filas);
			printw("\nIngrese Columnas:");refresh();
			scanw("%i",&columnas);
			mat=CreaMatriz(filas,columnas);
			Cargar(mat,filas,columnas);
			Mostrar(mat,filas,columnas,0,0);
			printw("\nPresione cualquier tecla.");refresh();
			getch();
			break;
		case 2:
			a=0;
			while(a<columnas){
				if(mat[0][a]!=1){
					attron(COLOR_PAIR(5));
					printw("\n\n\nEntrando por(%i;%i)",0,a);refresh();
					attroff(COLOR_PAIR(5));
					printw("\n(%i;%i)",0,a);refresh();
					mat[0][a]=2;
					Laberinto(mat,filas,columnas,0,a);
					mat[0][a]=0;
				}
				a++;
			}
			printw("\nPresione cualquier tecla.");refresh();
			getch();
			break;
		case 3:
			mat=CargaMat(&filas,&columnas);
			getch();
			break;
		case 4:
			GuardaMat(mat,filas,columnas);
			getch();
			break;
		case 5:
			Mostrar(mat,filas,columnas,0,0);
			printw("\nPresione cualquier tecla.");refresh();
			getch();
			break;
		default:
			printw("\nOpcion Invalida");refresh();
			printw("\nPresione cualquier tecla.");refresh();
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
	b=0;a++;
}
}

void Mostrar(int** Matriz,int filas,int columnas,int cx,int cy){
int a=0,b=0;
erase();refresh();
while(a<filas){
	while(b<columnas){
		if((a==cx)&&(b==cy)){
			attron(COLOR_PAIR(1));
			wprintw(stdscr,"|_%i_|",Matriz[a][b]);
			refresh();
			attroff(COLOR_PAIR(1));
		}else{
			if(Matriz[a][b]==1){
				attron(COLOR_PAIR(4));
				printw("|_%i_|",Matriz[a][b]);refresh();
				attroff(COLOR_PAIR(4));
			}else{
				attron(COLOR_PAIR(2));
				printw("|_%i_|",Matriz[a][b]);refresh();
				attroff(COLOR_PAIR(2));
			}
		}
		b++;
	}
	printw("\n");refresh();
	b=0;a++;
}
}

void Laberinto(int **mat,int filas,int columnas,int f,int c){
if (f<filas){
	if(f>0){
		if(c>0){
			if(mat[f-1][c-1]==0){
				printw("  >>>  (%i;%i)=%i",(f-1),(c-1),mat[f-1][c-1]);refresh();
				mat[f-1][c-1]=2;
				Laberinto(mat,filas,columnas,(f-1),(c-1));
				mat[f-1][c-1]=0;

			}
		}
		if (mat[f-1][c]==0){
            printw("  >>>  (%i;%i)=%i",(f-1),c,mat[f-1][c]);refresh();
			mat[f-1][c]=2;
			Laberinto(mat,filas,columnas,(f-1),c);
            mat[f-1][c]=0;
		}
		if((c+1)<columnas){
            if(mat[f-1][c+1]==0){
            printw("  >>>  (%i;%i)=%i",(f-1),(c+1),mat[f-1][c+1]);refresh();
			mat[f-1][c+1]=2;
			Laberinto(mat,filas,columnas,(f-1),(c+1));
            mat[f-1][c+1]=0;
            }
		}
	}
	if(c>0){
        if(mat[f][c-1]==0){
            printw("  >>>  (%i;%i)=%i",f,(c-1),mat[f][c-1]);refresh();
			mat[f][c-1]=2;
			Laberinto(mat,filas,columnas,f,(c-1));
            mat[f][c-1]=0;
        }
	}
	if((c+1)<columnas){
        if(mat[f][c+1]==0){
            printw("  >>>  (%i;%i)=%i",f,(c+1),mat[f][c+1]);refresh();
			mat[f][c+1]=2;
			Laberinto(mat,filas,columnas,f,(c+1));
            mat[f][c+1]=0;
        }
	}
    if((f+1)<filas){
        if(c>0){
            if(mat[f+1][c-1]==0){
                printw("  >>>  (%i;%i)=%i",(f+1),(c-1),mat[f+1][c-1]);refresh();
                mat[f+1][c-1]=2;
                Laberinto(mat,filas,columnas,(f+1),(c-1));
                mat[f+1][c-1]=0;
            }
        }
        if(mat[f+1][c]==0){
            printw("  >>>  (%i;%i)=%i",(f+1),c,mat[f+1][c]);refresh();
            mat[f+1][c]=2;
            Laberinto(mat,filas,columnas,(f+1),c);
            mat[f+1][c]=0;
        }
        if((c+1)<columnas){
            if(mat[f+1][c+1]==0){
            printw("  >>>  (%i;%i)=%i",(f+1),(c+1),mat[f+1][c+1]);refresh();
            mat[f+1][c+1]=2;
            Laberinto(mat,filas,columnas,(f+1),(c+1));
            mat[f+1][c+1]=0;
        }
    }
    }
    sleep(2);
    printw("\n<<<(%i,%i)<<<Backtrack!! ==> ",f,c);refresh();
    Mostrar(mat,filas,columnas,f,c);
    sleep(1);


if(f==(filas-1)){
    attron(COLOR_PAIR(5));
    printw("\nSalida >>>(%i;%i)",f,c);refresh();
    sleep(1);
    attroff(COLOR_PAIR(5));
}
}
}

void colores(){
if (has_colors){
	start_color();
	init_pair(1,COLOR_RED,COLOR_YELLOW);
	init_pair(2,COLOR_BLUE,COLOR_WHITE);
	init_pair(3,COLOR_BLACK,COLOR_CYAN);
	init_pair(4,COLOR_RED,COLOR_BLACK);
	init_pair(5,COLOR_BLACK,COLOR_WHITE);
}
}

void GuardaMat(int **mat,int fil,int col){
	printw("\n");refresh();
	int x=0,y=0;
	FILE *PF;
		//PF=fopen("/home/labo22a05/Trim2/matriz.txt","w");
		PF=fopen("matriz.txt","w");
		fprintf(PF,"%i\n%i\n",fil,col);
		while(x<fil){
			while(y<col){
				printw("%i\t",mat[x][y]);refresh();
				fprintf(PF,"%i\t",mat[x][y]);
				y++;
			}
			fprintf(PF,"\n");
			printw("\n");refresh();
			y=0;x++;
		}
		feof(PF);
		fclose(PF);
		printw("\nArchivo Creado con exito,Presione una tecla.\n");
}

int **CargaMat(int *filas,int *columnas){
	int x=0,y=0,a=0,b=0;
	FILE *PF;
		//PF=fopen("/home/labo22a05/Trim2/matriz.txt","r");
		PF=fopen("matriz.txt","r");
		if(PF==NULL){
			printw("\nArchivo Inexistente,presione una tecla.\n");refresh();
			getch();
		}else{
			fscanf(PF,"%i",&a);fscanf(PF,"%i",&b);
			printw("\n(%i x %i)",a,b);refresh();*(filas)=a;*(columnas)=b;
			int **aux=CreaMatriz(a,b);
			while(x<a){
				while(y<b){
					fscanf(PF,"%i",&aux[x][y]);
					y++;
				}
				y=0;x++;
			}
			fclose(PF);
			printw("\nMatriz leida.");
			Mostrar(aux,a,b,0,0);
			printw("\nArchivo Leido con exito,Presione una tecla.\n");
			return(aux);
		}
}
