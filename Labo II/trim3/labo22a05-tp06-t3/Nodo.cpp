#include <stdlib.h>
#include "Nodo.h"

Nodo::Nodo(){
    ant=NULL;
    sig=NULL;
}

Nodo::Nodo(char data){
    ant=NULL;
    sig=NULL;
    dato=data;
}
