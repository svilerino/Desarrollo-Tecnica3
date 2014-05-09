#include "Triangulo.h"

Triangulo::Triangulo(float larlado):Poligono(3,larlado){

}

float Triangulo::getSuperficie(){
    return(largolados*largolados/2);
}
