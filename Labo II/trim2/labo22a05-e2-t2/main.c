/*Evaluación de laboratorio II - Grupo A (2/3)

---------------------------------------------------------------------------------------------
Apellido/s, Nombre/s: Vileriño, Silvio

Cuenta: labo22a05
---------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
Enunciado:
---------------------------------------------------------------------------------------------
Hacer un programa que permita almacenar en un archivo binario de nombre "Alumnos.dat", los
siguientes datos de los alumnos de un curso:

	DNI
	Apellido
	Nombre
	Curso
	División

y en un segundo archivo binario las notas obtenidas en cada trimestre en cada materia,
debiendo cada registro respetar la siguiente estructura:

	DNI
	MATERIA
	T1
	T2
	T3

- El programa deberá hacer las altas del archivo de alumnos, y generar las notas de manera
  aleatoria, tomando el nombre de la materia de un archivo de texto que contiene las materias.
- Mostrar la lista de aprobados, diciembre y marzo de una materia seleccionada por el usuario.
  y los porcentajes para cada grupo.
- Mostrar las notas de todas las materias de un alumno determinado por el usuario.

---------------------------------------------------------------------------------------------
Crear el proyecto con el nombre labo22axx-e2-t2 (debiendo reemplazar las xx por el número
de cuenta. Excluyente).
Enviar la carpeta completa comprimida al mail sdilabo@gmail.com colocando el nombre del
proyecto como asunto, y copiando el texto contenido en el archivo .c en el cuerpo del mail.
---------------------------------------------------------------------------------------------
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

typedef struct{
	long int DNI;
	char Apellido[25];
	char Nombre[25];
	int Curso;
    int Division;
}ALUMNO;

typedef struct{
	long int DNI;
	char MATERIA[25];
	int T1;
	int T2;
	int T3;
}NOTAS;

ALUMNO init_alumno(int);
NOTAS init_Notas();
void Alta();
void List_Alumno();
void List_Notas();
void Estat();

int main(){
    system("clear");
    srand(time(NULL));
    int opcion=0;
    do{
        printf("labo22a05-e2-t2::Menu\n\t0.-Salir\n\t1.-Alta Alumno\n\t2.-Listado Alumnos\n\t3.-Listar Notas de un Alumno\n\t4.-Estadisticas de una Materia\n");
        scanf("%i",&opcion);
        switch(opcion){
            case 0:
                printf("\nAdios!!");
                break;
            case 1:
                Alta();
                break;
            case 2:
                List_Alumno();
                break;
            case 3:
                List_Notas();
                break;
            case 4:
                Estat();
                break;
            default:
                printf("\nOpcion Invalida!!");
        }
        printf("\nPresione una tecla para continuar.");
        getchar();
        getchar();
        system("clear");
    }while(opcion!=0);
    return (0);
}

ALUMNO init_alumno(int opc){
    ALUMNO var;
    if (opc==0){
        memset(var.Nombre,'\0',25);
        memset(var.Apellido,'\0',25);
        var.DNI=0;
        var.Curso=0;
        var.Division=0;
    }else{
        memset(var.Nombre,'\0',25);
        memset(var.Apellido,'\0',25);
        printf("\nIngrese Nombre:");
        scanf("%s",var.Nombre);getchar();
        printf("\nIngrese Apellido:");
        scanf("%s",var.Apellido);getchar();
        printf("\nIngrese DNI:");
        scanf("%li",&var.DNI);
        printf("\nIngrese Curso:");
        scanf("%i",&var.Curso);
        printf("\nIngrese Division:");
        scanf("%i",&var.Division);
    }
    return(var);
}

void Alta(){
FILE *PF;
FILE *PF2;
ALUMNO var=init_alumno(1);
NOTAS var_notas;
char *varchar=(char*)malloc(sizeof(char)*50);
char *varMateria=(char*)malloc(sizeof(char)*50);
memset(varchar,'\0',50);
memset(varMateria,'\0',50);
PF=fopen("Alumnos.dat","ab");
    fwrite(&var,sizeof(ALUMNO),1,PF);
fclose(PF);

sprintf(varchar,"%li",var.DNI);
strcat(varchar,".dat");

PF=fopen(varchar,"ab");
PF2=fopen("Materias.txt","rt");
if(PF2!=NULL){
    while(!feof(PF2)){
        var_notas=init_Notas();
        memset(varMateria,'\0',50);
        fgets(varMateria,sizeof(char)*30,PF2);
        strcpy(var_notas.MATERIA,varMateria);
        fwrite(&var_notas,sizeof(NOTAS),1,PF);
    }
    fclose(PF2);
}else{
    printf("\nArchivo de Materias devolvio NULL.");
}
fclose(PF);
}

NOTAS init_Notas(){
    NOTAS var;
    memset(var.MATERIA,'\0',25);
    var.T1=(int)(rand()%10)+1;
    var.T2=(int)(rand()%10)+1;
    var.T3=(int)(rand()%10)+1;
    return(var);
}

void List_Alumno(){
    ALUMNO var=init_alumno(0);
    FILE *PF;
    PF=fopen("Alumnos.dat","rb");
    if(PF!=NULL){
        fread(&var,sizeof(ALUMNO),1,PF);
        while(!feof(PF)){
        printf("\nNombre: %s\nApelido: %s\nDNI: %li\nCurso: %i\nDivision: %i\n-------------------\n",var.Nombre,var.Apellido,var.DNI,var.Curso,var.Division);
        fread(&var,sizeof(ALUMNO),1,PF);
        }
        printf("\n Fin de Archivo.");
        fclose(PF);
    }else{
        printf("\nArchivo Alumnos Devolvio NULL");
    }

}
void List_Notas(){
    NOTAS var;
    FILE *PF;
    char *DNI=(char*)malloc(sizeof(char)*20);
    memset(DNI,'\0',20);
    printf("\nIngrese DNI del alumno a listar notas:");getchar();
    scanf("%s",DNI);getchar();
    strcat(DNI,".dat");
    PF=fopen(DNI,"rb");
    if(PF!=NULL){
        printf("\nMateria\n\tTrim1\tTrim2\tTrim3");
        fread(&var,sizeof(NOTAS),1,PF);
        while(!feof(PF)){
            printf("\n%s\t%i\t%i\t%i",var.MATERIA,var.T1,var.T2,var.T3);
            fread(&var,sizeof(NOTAS),1,PF);
        }
        printf("\n Fin de Archivo.");
        fclose(PF);
    }else{
        printf("\n%s Devolvio NULL",DNI);
    }
}

void Estat(){
    FILE *PFalumnos;
    FILE *PFDNI;
    float promedio=0.0;
    int total=0,dic=0,mar=0,apr=0;
    float prapr=0,prdic=0,prmar=0;
    char *charmat=(char*)malloc(sizeof(char)*25);
    char *charmataux=(char*)malloc(sizeof(char)*25);
    memset(charmat,'\0',25);
    memset(charmataux,'\0',25);
    printf("\nIngrese Materia a dar Estadistica: ");
    scanf("%s",charmat);getchar();
    char *varDNI=(char*)malloc(sizeof(char)*15);
    memset(varDNI,'\0',15);
    ALUMNO var=init_alumno(0);
    NOTAS var_notas;
    PFalumnos=fopen("Alumnos.dat","rb");
    if(PFalumnos!=NULL){
        fread(&var,sizeof(ALUMNO),1,PFalumnos);
        while(!feof(PFalumnos)){
            memset(varDNI,'\0',15);
            sprintf(varDNI,"%li",var.DNI);
            strcat(varDNI,".dat");
            PFDNI=fopen(varDNI,"rb");
            if(PFDNI!=NULL){
                while(!feof(PFDNI)){
                fread(&var_notas,sizeof(NOTAS),1,PFDNI);
                promedio=((var_notas.T1+var_notas.T2+var_notas.T3)/(float)3);
                memset(charmataux,'\0',25);
                var_notas.MATERIA[strlen(var_notas.MATERIA)-1]='\0';
                strcpy(charmataux,var_notas.MATERIA);
                if(strcmp(charmat,charmataux)==0){
                    printf("\nAlumno: %s\tMateria: %s\tPromedio: %f:\n\nEstado/Instancia:",var.Nombre,var_notas.MATERIA,promedio);
                    switch((int)promedio){
                        case 1:
                        case 2:
                        case 3:
                            printf("\nMarzo");
                            mar++;
                            total++;
                            break;
                        case 4:
                        case 5:
                            printf("\nDiciembre");
                            dic++;
                            total++;
                            break;
                        default:
                            printf("\nAprobado");
                            total++;
                            apr++;
                    }
                    printf("\n-----------------------\n");
                }
                }
                fclose(PFDNI);
            }else{
                printf("\n%s devolvio NULL",varDNI);
            }
            fread(&var,sizeof(ALUMNO),1,PFalumnos);
        }
        fclose(PFalumnos);
        printf("\n\nCantidades:\nAprobados: %i\nDiciembre: %i\nMarzo: %i\nTotal: %i",apr,dic,mar,total);
        prapr=apr*100/(float)total;
        prdic=dic*100/(float)total;
        prmar=mar*100/(float)total;
        printf("\n\n\nPorcentajes:\nAprobados: %f\nDiciembre: %f\nMarzo: %f",prapr,prdic,prmar);
    }else{
        printf("\nArchivo Alumnos.dat devolvio NULL");
    }
}
