/*
Alumno: Vileriño,Silvio
Curso: 5to 2da
Fecha: 22-06-09
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

char **CreaMat(int,int);
void Acomodar(char**,char*);
void Mostrar(char**,int,int);
void BuscaLetra(char**,char,int*,int*);
void EncontrarLetras(char**,char**,int,int);
char **CargaMat(int*,int*);

int main(){
char *palabra=malloc(sizeof(char)*16);
char *temporal=malloc(sizeof(char)*16);
char **sopa=CreaMat(4,4);
char **palsopa=CreaMat(5,16);
int x=0;
memset(palabra,'\0',16);
memset(temporal,'\0',16);
system("clear");
printf("\nIngrese Palabra Principal:");
scanf("%s",palabra);
getchar();
printf("\nPalabra Principal Ingresada: %s .",palabra);
while(x<5){
    printf("\nIngrese Palabra a buscar numero %i: ",(x+1));
    scanf("%s",palsopa[x]);
    getchar();
    x++;
}
Acomodar(sopa,palabra);
printf("\nSopa de letras:\n");
Mostrar(sopa,4,4);
printf("\n\n\nPalabras a buscar:\n");
Mostrar(palsopa,5,16);
EncontrarLetras(sopa,palsopa,0,0);
return (0);
}

char **CreaMat(int filas,int columnas){
    int a=0;
    char **aux=malloc(sizeof(char*)*filas);
    while(a<filas){
        aux[a]=malloc(sizeof(char)*columnas);
        memset(aux[a],'\0',16);
        a++;
    }
return(aux);
}

void Acomodar(char** sopa,char *palabra){
int a=0,b=0,c=0;
    for(a=0;a<4;a++){
        if(a%2==0){
            for(b=0;b<4;b++){
                sopa[a][b]=palabra[c];
                c++;
            }
        }else{
            for(b=3;b>=0;b--){
                sopa[a][b]=palabra[c];
                c++;
            }
        }
    }
}


void Mostrar(char** sopa,int filas,int columnas){
int a=0,b=0;
while(a<filas){
    printf("%i\t",(a+1));
    b=0;
    while(b<columnas){
        printf(" %c ",sopa[a][b]);
        b++;
    }
    printf("\n");
    a++;
}
}

void BuscaLetra(char **sopa,char letra,int *fila,int*columna){
int a=0,b=0,band=0;
while(a<4){
    b=0;
    while(b<4){
        if (sopa[a][b]==letra){
            printf("\nLetra '%c' Encontrada en (%i;%i)",letra,a,b);
            band++;
        }
        b++;
    }
    a++;
}
printf("\n\tLetra '%c' Encontrada %i veces\n\n",letra,band);
if(band!=0){
//llamar backtracking desde letra.-
}
}

void EncontrarLetras(char **sopa,char **palsopa,int f,int c){
int a=0,b=0;
while(a<5){
    b=0;
        if(palsopa[a][0]!='\0'){
            printf("\nPalabra: %s...Letra a buscar: %c ",palsopa[a],palsopa[a][0]);
            BuscaLetra(sopa,palsopa[a][0],&f,&c);
            sleep(1);
        }
    a++;
}
}

char **CargaMat(int *filas,int *columnas){
int a=0,b=0,x=0,y=0,auxi=0;
FILE *PF=fopen("matriz.txt","rt");
if(PF!=NULL){
    fscanf(PF,"%i",&a);fscanf(PF,"%i",&b);
    *filas=a;
    *columnas=b;
    char**aux=(char**)malloc(sizeof(char*)*a);
    for(auxi=0;auxi<a;auxi++)
        aux[auxi]=(char*)malloc(sizeof(char)*b);
    while(x<a){
        while(y<b){
            fscanf(PF,"%c",&aux[x][y]);
            y++;
        }
        x++;
    }
    fclose(PF);
    return(aux);
}else{
    printf("\nError. Archivo no existe.");
    return((char**)NULL);
}

}
