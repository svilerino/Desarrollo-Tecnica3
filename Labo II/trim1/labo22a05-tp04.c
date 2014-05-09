/*
Alumno: Vileriño,Silvio
Curso:5to 2da
Fecha: 11/5/09
*/
#include <stdio.h>
#include <stdlib.h>

int esdivisibleportres(int);

int main(){
	int numero=0;
	system("clear");
	printf("Ingrese Numero:");
	scanf("%i",&numero);
	if (esdivisibleportres(numero)==0){
		printf("\n%i Es Divisible por 3\n",numero);
	}else{
		printf("\n%i NO es Divisible por 3\n",numero);
	}
return(0);
}

int esdivisibleportres(int num){
static restos;
	if ((num/10)<10){
		restos+=((num/10)+(num%10));
		printf("\nFin,suma de los digitos= %i\n",restos);
		if((restos<10)){
			if((restos==3)||(restos==6)||(restos==9)){
				return(0);
			}else{
				return(1);
			}
		}else{
			num=restos;
			restos=0;
			return(esdivisibleportres(num));
		}
	}else{
		printf("\nDivision=%i , Resto=%i\n",(num/10),(num%10));
		restos+=(num%10);
		return(esdivisibleportres(num/10));
	}
}
