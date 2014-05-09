/*
Alumno: Silvio, Vileriño
Curso:5to 2da
Fecha:15/05/09
*/
#include <stdio.h>
#include <stdlib.h>

unsigned long int fibonacci (unsigned int, int);

int main (){
int n=0,opcion=0;
system("clear");
do{
	printf("\nMenu:\n\t1.-Devolver fibonacci(n).\n\t2.-Devolver serie fibonacci hasta n.\n\t0.-Salir.");
	scanf("%i",&opcion);
	switch(opcion){
		case 1:
			printf("\nIngrese Termino f(n):");scanf("%i",&n);
			printf("\nf(%i)=%li",n,fibonacci(n,0));
		break;
		case 2:
			printf("\nIngrese Termino f(n):");scanf("%i",&n);
			printf("\n0");
			printf("=%li",fibonacci(n,1));
		break;
		default:
			printf("\nOpcion Invalida");
	}
}while(opcion!=0);
return(0);
}

unsigned long int fibonacci (unsigned int n, int serie){
static unsigned long int sumatoria=0;
if(serie==0){
	if (n<=2){
		return(n-1);
	}else{
		return((fibonacci(n-1,0))+(fibonacci(n-2,0)));
	}
}else{
	sumatoria=0;
	if (n>1){
		fibonacci(n-1,1);
		sumatoria+=fibonacci(n,0);
		printf("+%li",fibonacci(n,0));
	}
		return(sumatoria);
}
}
