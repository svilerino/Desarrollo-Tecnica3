#ifndef NODO_H_INCLUDED
#define NODO_H_INCLUDED
class Nodo{
    public:
        char dato;
        Nodo *ant;
        Nodo *sig;
        Nodo();
        Nodo(char);
};

#endif // NODO_H_INCLUDED
