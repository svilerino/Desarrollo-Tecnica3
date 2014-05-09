/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Estructuras.java (Clase Abstracta Estructuras)
Terminado.OK
*/
public abstract class Estructuras implements Cloneable{
	protected int cantidad_nodos;

	public static void mostrarTodas(Object vec[]){
		for(int a=0;a<vec.length;a++)
			if(vec[a]!=null) System.out.println("\t\tEstructura Numero: " + (a+1) + " de " + vec.length +"\n" + vec[a] + "\n\n-------------\n\n");
	}

	public abstract String toString();
	public abstract int hashcode();
	public abstract boolean equals(Object obj2);
	public abstract Object clone();
	public abstract void addNodo(Object data);
	public abstract boolean dltNodo(Object data);
}