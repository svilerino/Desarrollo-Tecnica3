/*
Alumno: Vileriño, Silvio
Curso: 5to 2da
Fecha: 15/05/09
*/
#include <stdio.h>
#include <stdlib.h>

int suma(int,int);
int resta(int,int);
int multi(int,int);
float divi(int,int);
int pote(int,int);

int main(){
	system("clear");
	int a=0,b=0,opcion=0;
	printf("\nIngrese a:");
	scanf("%i",&a);
	printf("\nIngrese b:");
	scanf("%i",&b);
	do{
		printf("\nMenu:\n\t1.-Suma\n\t2.-Resta\n\t3.-Multiplicacion\n\t4.-Division\n\t5.-Potenciacion\n\t0.-Salir\n\t\t");
		scanf("%i",&opcion);
		switch (opcion){
			case 0:
				printf("\nAdios !.\n");
				break;
			case 1:
				printf("%i+%i=%i",a,b,suma(a,b));
				break;
			case 2:
				printf("%i-%i=%i",a,b,resta(a,b));
				break;
			case 3:
				printf("%i*%i=%i",a,b,multi(a,b));
				break;
			case 4:
				if(b!=0){
					printf("%i/%i=%f",a,b,divi(a,b));
				}else{
					printf("Division por 0 !");
				}
				break;
			case 5:
				printf("%i^%i=%i",a,b,pote(a,b));
				break;
			default:
				printf("\nOpcion Invalida\n");
		}
	}while(opcion!=0);
return(0);
}

int suma(int a,int b){
	return(a+b);
}

int resta(int a,int b){
	return(a-b);
}

int multi(int a,int b){
	return(a*b);
}

float divi(int a,int b){
	return(a/(float)b);
}

int pote(int a,int b){
int cont=1,resu=a;
if(b!=0){
	while (cont<b){
		resu*=a;
		cont++;
	}
	return(resu);
}else{
	return(1);
}
}

