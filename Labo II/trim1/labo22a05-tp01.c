/* 
Alumno: Vileriño,Silvio;
Curso: 5to 2da ;
Dia: 17/4/09;
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

void mostrar(int[15]);
void cargar(int[15],int,int);
void ordenari(int[15],int);
void ordenarra(int,int[15],int);
void ordenarrb(int,int,int[15],int);
void swap(int*,int*);

int main(){
    srand(time(NULL));
    int opcion=0,opcion2=0,vector[15];
    int minimo=0,maximo=0;
    memset(vector,0,15);
    system("clear");
    printf("\nIngrese Rango Minimo: ");
    scanf("%i",&minimo);
    printf("\nIngrese Rango Maximo: ");
    scanf("%i",&maximo);
    cargar(vector,minimo,maximo);
    printf("\nVector Sin Ordenar:\n");
    mostrar(vector);
    do{
    printf("\n Ordenamiento: \n\t 1.Decreciente \n\t 2.Creciente \n Ingrese Opcion: ");
    scanf("%i",&opcion);
    }while((opcion>2)&&(opcion<0));
    printf("\n Ordenamiento: \n\t 1.Iterativo \n\t 2.Recursivo \n Ingrese Opcion: ");
    scanf("%i",&opcion2);
    switch(opcion2){
        case 1:
            ordenari(vector,opcion);
        break;
        case 2:
            ordenarra(0,vector,opcion);
        break;
        default:
            printf("\nOpcion Invalida.");
    }
    printf("\n Vector Ordenado:");
    mostrar(vector);
    return(0);
}

void cargar(int vector[15],int minimo,int maximo){
    int a=0;
    while(a<=14){
        vector[a]=(int) minimo+( rand()% (maximo-minimo));
        a++;
    }
}

void mostrar(int vector[15]){
    int a=0;
    while(a<=14){
        printf("\n%i",vector[a]);
        a++;
    }
    printf("\n\n");
}

void ordenari(int vector[15],int opcion){
    int a=0,b=0;
            while (a<=13){
                b=a+1;
                while(b<=14){
                    switch(opcion){
                    case 1:
                        if (vector[a]<vector[b]){
                            swap(&vector[a],&vector[b]);
                        }
                    break;
                    case 2:
                        if (vector[a]>vector[b]){
                            swap(&vector[a],&vector[b]);
                        }                
                    break;
                    default:
                        printf("Opcion Invalida");
                    }
                    b++;
                }
                a++;
        }
}

void ordenarra(int a,int vector[15],int opcion){
    if(a<14){
        ordenarrb(a,(a+1),vector,opcion);
        return(ordenarra((a+1),vector,opcion));
    }
}

void ordenarrb(int a,int b,int vector[15],int opcion){
    if(b<15){
        switch(opcion){
            case 1: 
                if (vector[a]<vector[b]){
                    swap(&vector[a],&vector[b]);         
                }
                break;
            case 2:
                if (vector[a]>vector[b]){
                    swap(&vector[a],&vector[b]);         
                }
                break;
            default:
                printf("Opcion Invalida.");
            }
        return(ordenarrb(a,(b+1),vector,opcion));
    }
}

void swap(int *a,int *b){
    int c=0;
    c=*a;
    *a=*b;
    *b=c;
}

