#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct{
    int Codigo;
    char Detalle[50];
    float Precio_venta;
    float Precio_compra;
    int Proveedor;
}Producto;

typedef struct{
    int Codigo;
    char Nombre[50];
    char Email[50];
    long int Telefono;
}Proveedor;

typedef struct{
    char CUIT[12];
    long int Fecha_alta;
    char Email[50];
    long int Telefono;
}Cliente;

typedef struct{
    int Codigo;
    long int Fecha_alta;
    char Cliente[50];
    float Total;
    float Descuentos;
}Presupuesto;

typedef struct{
    int Codigo;
    int Producto;
    int Cantidad;
    float Precio_unitario;
}Detalle_presupuesto;

void Menu_ABML(int);
void Listar_presupuesto(Presupuesto,Detalle_presupuesto);
void Alta(int);
void Baja(int);
void Listado(int);
Presupuesto init_Presupuesto(int);
Detalle_presupuesto init_dt_Presupuesto(int,int);
Producto init_Producto(int);
Cliente init_Cliente(int);
Proveedor init_Proveedor(int);

int main(int argc,char *argv[]){
    int opcion=0;
    system("clear");
    do{
        printf("\nBienvenido (TP03-ABML)\nOpciones:\n\t1.-Presupuestos\n\t2.-Productos\n\t3.-Proveedores\n\t4.-Clientes");
        printf("\n\t0.-Salir\nOpcion: ");
        scanf("%i",&opcion);
        switch(opcion){
            case 0:
                printf("\nAdios!\n");
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            Menu_ABML(opcion);
            break;
            default:
                printf("\nOpcion Invalida, (Opciones Validas : 0-4). Presione una tecla.\n\n");
                getchar();
                getchar();
        }
        system("clear");
    }while(opcion!=0);
    return(0);
}

void Menu_ABML(int registro){
    int opcion=0;
    system("clear");
    do{
        printf("Opciones:\n\t1.-Altas\n\t2.-Bajas\n\t3.-Listados\n\t0.-Volver\nOpcion: ");
        scanf("%i",&opcion);
        switch(opcion){
            case 0:
                break;
            case 1:
                Alta(registro);
                break;
            case 2:
                Baja(registro);
                break;
            case 3:
                Listado(registro);
                break;
            default:
                printf("\nOpcion Invalida, (Opciones Validas : 0-3). Presione una tecla.\n\n");
                getchar();
                getchar();
        }
        printf("\nPresione una tecla para continuar");
        getchar();
        getchar();
        system("clear");
    }while(opcion!=0);
}

void Alta(int mppal){
    char *opcion=(char*)malloc(sizeof(char)*2);
    memset(opcion,'\0',2);
    char *aux=(char*)malloc(sizeof(char)*50);
    memset(aux,'\0',50);
    Presupuesto reg_Presupuesto=init_Presupuesto(0);
    Detalle_presupuesto reg_dt_Presupuesto=init_dt_Presupuesto(0,0);
    Producto reg_Producto=init_Producto(0);
    Proveedor reg_Proveedor=init_Proveedor(0);
    Cliente reg_Cliente=init_Cliente(0);
    FILE *PF;
    switch(mppal){
        case 1:
            PF=fopen("Presupuestos.dat","ab");
            reg_Presupuesto=init_Presupuesto(1);
            //reg_Presupuesto.Codigo=ftell(PF)/sizeof(Presupuesto)+1;
            fwrite(&reg_Presupuesto,sizeof(Presupuesto),1,PF);
            printf("\nAlta realizada en Presupuestos.dat\n");
            fclose(PF);
            sprintf(aux,"%i",reg_Presupuesto.Codigo);
            do{
            PF=fopen(aux,"ab");
            reg_dt_Presupuesto=init_dt_Presupuesto(1,reg_Presupuesto.Codigo);
            //reg_dt_Presupuesto.Codigo=ftell(PF)/sizeof(Detalle_presupuesto)+1;
            fwrite(&reg_dt_Presupuesto,sizeof(Detalle_presupuesto),1,PF);
            fclose(PF);
            printf("\nDesea seguir agregando productos?(s/n)");
            memset(opcion,'\0',2);
            scanf("%c",opcion);getchar();
            }while(opcion[0]!='n');
            //arreglar char opc while para muchos prods en append en el detalle.
            break;
        case 2:
            PF=fopen("Productos.dat","ab");
            reg_Producto=init_Producto(1);
            //reg_Producto.Codigo=ftell(PF)/sizeof(Producto)+1;
            fwrite(&reg_Producto,sizeof(Producto),1,PF);
            printf("\nAlta realizada en Productos.dat\n");
            fclose(PF);
            break;
        case 3:
            PF=fopen("Proveedores.dat","ab");
            reg_Proveedor=init_Proveedor(1);
            //reg_Proveedor.Codigo=ftell(PF)/sizeof(Producto)+1;
            fwrite(&reg_Proveedor,sizeof(Proveedor),1,PF);
            printf("\nAlta realizada en Proveedores.dat\n");
            fclose(PF);
            break;
        case 4:
            PF=fopen("Clientes.dat","ab");
            reg_Cliente=init_Cliente(1);
            fwrite(&reg_Cliente,sizeof(Cliente),1,PF);
            printf("\nAlta realizada en Clientes.dat\n");
            fclose(PF);
            break;
    }
}

void Baja(int mppal){
    int registro=0;
    char *aux=(char*)malloc(sizeof(char)*50);
    memset(aux,'\0',50);
    Presupuesto reg_Presupuesto=init_Presupuesto(0);
//    Detalle_presupuesto reg_dt_Presupuesto=init_dt_Presupuesto(0,0);
    Producto reg_Producto=init_Producto(0);
    Proveedor reg_Proveedor=init_Proveedor(0);
    Cliente reg_Cliente=init_Cliente(0);
    FILE *PF,*PF2;
    switch(mppal){
        case 1:
        //ingreso
            PF=fopen("Presupuestos.dat","rb");
            if(PF!=NULL){
                PF2=fopen("Presupuestos2.dat","wb");
                while(!feof(PF)){
                    fread(&reg_Presupuesto,sizeof(Presupuesto),1,PF);
                    //set de printf y abrir detalle presu
                }
                fclose(PF);
                fclose(PF2);
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 2:
            printf("\nIngrese Registro a dar de baja: ");
            scanf("%i",&registro);
            PF=fopen("Productos.dat","rb");
            if(PF!=NULL){
                PF2=fopen("Productos2.dat","wb");
                while(!feof(PF)){
                    fread(&reg_Producto,sizeof(Producto),1,PF);
                    if(registro==reg_Producto.Codigo){
                        printf("\n\n----------------------\nCodigo: %i\nDetalle: %s\nPrecio compra: %f\nPrecio venta: %f\nProveedor:%i\n",reg_Producto.Codigo,reg_Producto.Detalle,reg_Producto.Precio_compra,reg_Producto.Precio_venta,reg_Producto.Proveedor);
                        printf("\nRegistro Eliminado.Presione Enter.\n\n");getchar();getchar();
                    }else{
                        fwrite(&reg_Producto,sizeof(Producto),1,PF2);
                    }
                }
                fclose(PF);
                fclose(PF2);
                rename("Productos2.dat","Productos.dat");
                remove("Productos2.dat");
                //reindexar los indices de codigo de prod.
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 3:
            printf("\nIngrese Registro a dar de baja: ");
            scanf("%i",&registro);
            PF=fopen("Proveedores.dat","rb");
            if(PF!=NULL){
                PF2=fopen("Proveedores2.dat","wb");
                while(!feof(PF)){
                    fread(&reg_Proveedor,sizeof(Proveedor),1,PF);
                    if(registro==reg_Proveedor.Codigo){
                        printf("\n\n----------------------\nCodigo: %i\nEmail: %s\nNombre: %s\nTelefono:%li\n",reg_Proveedor.Codigo,reg_Proveedor.Email,reg_Proveedor.Nombre,reg_Proveedor.Telefono);
                        printf("\nRegistro Eliminado.Presione Enter.\n\n");getchar();getchar();
                    }else{
                        fwrite(&reg_Proveedor,sizeof(Proveedor),1,PF2);
                    }
                }
                fclose(PF);
                fclose(PF2);
                rename("Proveedores2.dat","Proveedores.dat");
                remove("Proveedores2.dat");
                //reindexar codigos.
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 4:
            printf("\nIngrese Registro a dar de baja(num cliente): ");
            scanf("%i",&registro);
            PF=fopen("Clientes.dat","rb");
            if(PF!=NULL){
                PF2=fopen("Clientes2.dat","wb");
                while(!feof(PF)){
                    fread(&reg_Cliente,sizeof(Cliente),1,PF);
                    if(registro==ftell(PF)/sizeof(Cliente)){
                        printf("\n\n----------------------\nCuit:%s\nEmail: %s\nFecha alta: %li\nTelefono:%li",reg_Cliente.CUIT,reg_Cliente.Email,reg_Cliente.Fecha_alta,reg_Cliente.Telefono);
                        printf("\nRegistro Eliminado.Presione Enter.\n\n");getchar();getchar();
                    }else{
                        fwrite(&reg_Cliente,sizeof(Cliente),1,PF2);
                    }
                }
                fclose(PF);
                fclose(PF2);
                rename("Clientes2.dat","Clientes.dat");
                remove("Clientes2.dat");
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
    }
}

void Listado(int mppal){
    char *aux=(char*)malloc(sizeof(char)*50);
    memset(aux,'\0',50);
    Presupuesto reg_Presupuesto=init_Presupuesto(0);
//    Detalle_presupuesto reg_dt_Presupuesto=init_dt_Presupuesto(0,0);
    Producto reg_Producto=init_Producto(0);
    Proveedor reg_Proveedor=init_Proveedor(0);
    Cliente reg_Cliente=init_Cliente(0);
    FILE *PF;
    switch(mppal){
        case 1:
            PF=fopen("Presupuestos.dat","rb");
            if(PF!=NULL){
                while(!feof(PF)){
                    fread(&reg_Presupuesto,sizeof(Presupuesto),1,PF);
                    //set de printf y abrir detalle presu
                }
                fclose(PF);
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 2:
            PF=fopen("Productos.dat","rb");
            if(PF!=NULL){
                while(!feof(PF)){
                    fread(&reg_Producto,sizeof(Producto),1,PF);
                    printf("\n\n----------------------\nCodigo: %i\nDetalle: %s\nPrecio compra: %f\nPrecio venta: %f\nProveedor:%i\n",reg_Producto.Codigo,reg_Producto.Detalle,reg_Producto.Precio_compra,reg_Producto.Precio_venta,reg_Producto.Proveedor);
                }
                fclose(PF);
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 3:
            PF=fopen("Proveedores.dat","rb");
            if(PF!=NULL){
                while(!feof(PF)){
                    fread(&reg_Proveedor,sizeof(Proveedor),1,PF);
                    printf("\n\n----------------------\nCodigo: %i\nEmail: %s\nNombre: %s\nTelefono:%li\n",reg_Proveedor.Codigo,reg_Proveedor.Email,reg_Proveedor.Nombre,reg_Proveedor.Telefono);
                }
                fclose(PF);
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
        case 4:
            PF=fopen("Clientes.dat","rb");
            if(PF!=NULL){
                while(!feof(PF)){
                    fread(&reg_Cliente,sizeof(Cliente),1,PF);
                    printf("\n\n----------------------\nNumero Cliente: %li\nCuit:%s\nEmail: %s\nFecha alta: %li\nTelefono:%li",ftell(PF)/sizeof(Cliente),reg_Cliente.CUIT,reg_Cliente.Email,reg_Cliente.Fecha_alta,reg_Cliente.Telefono);
                }
                fclose(PF);
            }else{
                printf("Archivo Devolvio NULL");
            }
            break;
    }
}

Presupuesto init_Presupuesto(int opc){
    Presupuesto reg_Presupuesto;
    if(opc==0){
        memset(reg_Presupuesto.Cliente,'\0',50);
        reg_Presupuesto.Codigo=0;
        reg_Presupuesto.Descuentos=0.0;
        reg_Presupuesto.Fecha_alta=0;
        reg_Presupuesto.Total=0.0;
    }else{
        system("clear");
        printf("\nIngrese Nombre del Cliente: ");
        scanf("%s",reg_Presupuesto.Cliente);getchar();
        printf("\nIngrese Codigo: ");
        scanf("%i",&reg_Presupuesto.Codigo);
        printf("\nIngrese Descuentos: ");
        scanf("%f",&reg_Presupuesto.Descuentos);
        printf("\nIngrese Fecha de alta aaaammdd: ");
        scanf("%li",&reg_Presupuesto.Fecha_alta);
        printf("\nIngrese Total: ");
        scanf("%f",&reg_Presupuesto.Total);

    }
    return(reg_Presupuesto);
}

Detalle_presupuesto init_dt_Presupuesto(int opc,int code){
    Detalle_presupuesto reg;
    if(opc==0){
        reg.Cantidad=0;
        reg.Codigo=0;
        reg.Precio_unitario=0.0;
        reg.Producto=0;
    }else{
        system("clear");
        printf("\nIngrese Cantidad: ");
        scanf("%i",&reg.Cantidad);
        printf("\nIngrese Codigo de producto: ");
        scanf("%i",&reg.Producto);
        //sacar precio de codigo de prod.
        reg.Codigo=code;
    }
    return(reg);
}

Producto init_Producto(int opc){
    Producto reg;
    if(opc==0){
        reg.Codigo=0;
        memset(reg.Detalle,'\0',50);
        reg.Precio_compra=0.0;
        reg.Precio_venta=0.0;
        reg.Proveedor=0;
    }else{
        system("clear");
        printf("\nIngrese Codigo: ");
        scanf("%i",&reg.Codigo);
        printf("\nIngrese Detalle: ");
        scanf("%s",reg.Detalle);getchar();
        printf("\nIngrese Precio Compra: ");
        scanf("%f",&reg.Precio_compra);
        printf("\nIngrese Precio Venta: ");
        scanf("%f",&reg.Precio_venta);
        printf("\nIngrese Proveedor: ");
        scanf("%i",&reg.Proveedor);
    }
    return(reg);
}

Cliente init_Cliente(int opc){
    Cliente reg;
    if(opc==0){
        memset(reg.CUIT,'\0',12);
        memset(reg.Email,'\0',50);
        reg.Fecha_alta=0;
        reg.Telefono=0;
    }else{
        system("clear");
        printf("\nIngrese CUIT: ");
        scanf("%s",reg.CUIT);getchar();
        printf("\nIngrese Email: ");
        scanf("%s",reg.Email);getchar();
        printf("\nIngrese Fecha de alta aaaammdd: ");
        scanf("%li",&reg.Fecha_alta);
        printf("\nIngrese Telefono: ");
        scanf("%li",&reg.Telefono);
    }
    return(reg);
}

Proveedor init_Proveedor(int opc){
    Proveedor reg;
    if(opc==0){
        reg.Codigo=0;
        memset(reg.Email,'\0',12);
        memset(reg.Nombre,'\0',12);
        reg.Telefono=0;
    }else{
        printf("\nIngrese Codigo: ");
        scanf("%i",&reg.Codigo);
        printf("\nIngrese Nombre: ");
        scanf("%s",reg.Nombre);getchar();
        printf("\nIngrese Email: ");
        scanf("%s",reg.Email);getchar();
        printf("\nIngrese Telefono: ");
    }
    return(reg);
}
