#ifndef PUNTO_H_INCLUDED
#define PUNTO_H_INCLUDED
class Punto{
    protected:
        int x;
        int y;
    public:
        Punto();
        Punto(int,int);
        void setX(int);
        void setY(int);
        int getX();
        int getY();
};

#endif // PUNTO_H_INCLUDED
