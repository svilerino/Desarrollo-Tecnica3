#include "Cuadrado.h"

Cuadrado::Cuadrado(float larlado):Poligono(4,larlado){

}

float Cuadrado::getSuperficie(){
    return(largolados*largolados);
}
