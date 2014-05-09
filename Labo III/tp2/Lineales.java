/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Lineales.java (Clase Abstracta Lineales)
Terminado.OK
*/
public abstract class Lineales extends Estructuras{
	protected Nodo primer_nodo;
	protected Nodo ultimo_nodo;
	public int getLargo(){return (cantidad_nodos);}
	protected Nodo getFstNodo(){return(primer_nodo);}
	protected Nodo getLstNodo(){return(ultimo_nodo);}
}