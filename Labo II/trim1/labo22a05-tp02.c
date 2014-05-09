/*
Alumno: Vileriño,Silvio
Curso: 5to 2da
Fecha: 8/5/09 
Hora: 17.00
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <unistd.h>

int **CreaMatriz(int,int);
void Cargar(int**,int,int,int,int);
void Mostrar(int**,int,int,int,int);
void Multiplicar(int **mat1,int **mat2,int fila,int columna);

int main(){
srand(time(NULL));
int filas=0,columnas=0,opcion=0,minimo=0,maximo=0;
system("clear");
printf("\033[0;30m\033[1;37m\n");
do{
	printf("\n\t1.-Cargar Matrices\n\t2.-Multiplicar Matrices\n\t0.-Salir\n\tIngrese Opcion:\n");
	scanf("%i",&opcion);
	switch(opcion){
		case 0:
			printf("\nAdios!.\n");
			break;
		case 1:
			printf("\nIngrese Numero de filas: \n");
			scanf("%i",&filas);
			printf("\nIngrese Numero de columnas: \n");
			scanf("%i",&columnas);
			printf("\nIngrese Rango, minimo: \n");
			scanf("%i",&minimo);
			printf("\nIngrese Rango, maximo: \n");
			scanf("%i",&maximo);
			int **mat1=CreaMatriz(filas,columnas);
			int **mat2=CreaMatriz(filas,columnas);
			Cargar(mat1,filas,columnas,minimo,maximo);
			Cargar(mat2,filas,columnas,minimo,maximo);
			break;
		case 2:
			Multiplicar(mat1,mat2,filas,columnas);
			break;
		default:
			printf("\nOpcion Invalida\n");
	}
}while(opcion!=0);
return(0);
}

int **CreaMatriz(int f,int c){
	int **Matriz=malloc(sizeof(int*)*f);
	int a=0;
	while(a<f){
		Matriz[a]=malloc(sizeof(int)*c);
		a++;
	}
	return(Matriz);
}

void Cargar(int **mat,int fila,int columna,int minimo,int maximo){
	int a=0;
	int b=0;
	while (a<fila){
		while(b<columna){
			mat[a][b]=(int)rand()% (maximo-minimo+1)+minimo;
			b++;
		}	
		b=0;a++;
	}
}

void Mostrar(int **mat,int fila,int columna,int color1, int color2){
	int a=0;
	int b=0;
	while (a<fila){
		while (b<columna){
			if((a==color1)&&(b==color2)){				
				printf("\033[0;30m\033[0;34m|_%3i_|",mat[a][b]);
				printf("\033[0;30m\033[1;37m");					
			}else{
				printf("|_%3i_|",mat[a][b]);
			}
			b++;
		}
		printf("\n");
		b=0;a++;
	}
}

void Multiplicar(int **mat1,int **mat2,int fila,int columna){
int color1=0,color2=0;
int c=0,d=0;
while(color1<fila){
	while(color2<columna){
		system("clear");
		c=0;d=0;
		printf("\nMatriz Resultante de mat1[a][b]*mat2[a][b]:\n");
		while(c<=color1){
			while(d<=color2){
			printf("|_%4i_|",(mat1[c][d]*mat2[c][d]));
			d++;
			}
			printf("\n");
			d=0;c++;
	  	}
		printf("\nMatriz 1:\n\n");
		Mostrar(mat1,fila,columna,color1,color2);
		printf("\nMatriz 2:\n\n");
		Mostrar(mat2,fila,columna,color1,color2);
		printf("\n\n");
		color2++;
		sleep(1);
	}
	color2=0;color1++;
}
}

