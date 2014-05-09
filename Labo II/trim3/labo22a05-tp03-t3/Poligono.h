#ifndef POLIGONO_H_INCLUDED
#define POLIGONO_H_INCLUDED
class Poligono{
    protected:
        int lados;
        float largolados;
        float Radian(float);
    public:
        Poligono(int,float);
        float getPerimetro();
        float getSuperficie();
        int getLados();
        float getLargoLado();
        void metGraficar();
        float getApotema();
};

#endif // POLIGONO_H_INCLUDED
