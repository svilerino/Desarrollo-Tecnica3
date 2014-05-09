#ifndef MATRIZ_H_INCLUDED
#define MATRIZ_H_INCLUDED
class Matriz{
    private:
        int **Mat;
        int filas;
        int columnas;
        int rf;
        void fillMat();
        void fillMat(int,int,int,int);
        void swapElem(int*,int*);
        int CalculaXWindow(int);
        int CalculaYWindow(int);
        int EscalaXWindow();
        int EscalaYWindow();
        void getEspMat(int*,int);
        void setEspMat(int*);
    public:
        Matriz();
        Matriz(int,int,int,int);
        ~Matriz();
        int getElemento(int,int);
        int getFilas();
        int getColumnas();
        void paintMatriz();
        void printMatriz();
        void ordMat(int,int);

};

#endif // MATRIZ_H_INCLUDED
