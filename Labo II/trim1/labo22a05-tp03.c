/*
Alumno: Vileriño, Silvio
Curso: 5to 2da
Fecha: 11/05/09
*/
#include <stdio.h>
#include <stdlib.h>
#include <math.h> //sqrt link gcc -lm nombredearchivo.c

typedef struct{
	int x;
	int y;
	int z;
	int dim;
}registro;

float distancia(registro,registro);

int main(){
int opcion=0;
registro datos1,datos2;
system("clear");
do{
	printf("\n\t1.-Ingresar cantidad de coordenadas.\n\t2.-Ingresar Puntos:\n\t3.-Devolver Distancia\n\t0.-Salir\nIngrese su opcion:");
	scanf("%i",&opcion);
	
	switch(opcion){
		case 0:
			printf("\nAdios!.\n");
			break;
		case 1:
			printf("\nIngrese Cantidad de coordenadas a utilizar (2-3): ");
			scanf("%i",&datos1.dim);
			datos2.dim=datos1.dim;
			break;
		case 2:
			printf("\nIngrese Coordenada 1(x): ");
			scanf("%i",&datos1.x);
			printf("\nIngrese Coordenada 1(y): ");
			scanf("%i",&datos1.y);
			if (datos1.dim==3){
				printf("\nIngrese Coordenada 1(z): ");
				scanf("%i",&datos1.z);
			}else{
				datos1.z=0;
			}
			printf("\nIngrese Coordenada 2(x): ");
			scanf("%i",&datos2.x);
			printf("\nIngrese Coordenada 2(y): ");
			scanf("%i",&datos2.y);
			if (datos2.dim==3){
			printf("\nIngrese Coordenada 2(z): ");
			scanf("%i",&datos2.z);
			}else{
				datos2.z=0;
			}
			break;
		case 3:
		if ((datos1.dim==3)&&(datos2.dim==3)){
			printf("La distancia entre (%i,%i,%i) y (%i,%i,%i) es : %f",datos1.x,datos1.y,datos1.z,datos2.x,datos2.y,datos2.z,distancia(datos1,datos2));
			}else{
				printf("La distancia entre (%i,%i) y (%i,%i) es : %f",datos1.x,datos1.y,datos2.x,datos2.y,distancia(datos1,datos2));
			}
		break;
		default:
			printf("Opcion invalida");
	}

}while(opcion!=0);
return(0);
}

float distancia(registro datos1,registro datos2){
	float sumas;
	sumas=pow((double)(datos1.x - datos2.x),2)+pow((double)(datos1.y - datos2.y),2)+pow((double)(datos1.z - datos2.z),2);
	return(sqrtf(sumas));
}
