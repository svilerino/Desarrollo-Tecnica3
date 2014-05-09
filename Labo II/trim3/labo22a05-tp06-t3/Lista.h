#ifndef LISTA_H_INCLUDED
#define LISTA_H_INCLUDED
#include "Nodo.h"
class Lista{
    private:
        Nodo *inicio;
        void dltLst(Nodo*);
        int CalculaX(int);
    public:
        Lista();
        void addNodo(char);
        void printLista();
        void dltLista();
        void paintLista();
        void dltNodo(char);
};
#endif // LISTA_H_INCLUDED
