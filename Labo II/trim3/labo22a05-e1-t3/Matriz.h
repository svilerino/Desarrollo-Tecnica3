#ifndef MATRIZ_H_INCLUDED
#define MATRIZ_H_INCLUDED
class Matriz{
    private:
        int **Mat;
        void CargaMat(int,int);
    public:
        Matriz(int,int);
        ~Matriz();
        int ObtenerSuma();
        void printMat();//lo cree para probar la sumatoria de elementos.
};

#endif // MATRIZ_H_INCLUDED
