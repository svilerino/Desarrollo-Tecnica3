/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Nodo.java (Clase Nodo)
Terminado OK.
*/
public class Nodo implements Cloneable{
	private Object dato;
	private Nodo sig;

	public Nodo(Object data){
		this.setDato(data);
		this.setSig(null);
	}

	public Nodo(Object data,Nodo sig){//constructor sobrecargado
		this.setDato(data);
		this.setSig(sig);
	}

	//setters y getters
	public void setSig(Nodo prox){
		this.sig=prox;
	}

	public Nodo getSig(){
		return(this.sig);
	}

	public void setDato(Object data){
		this.dato=data;
	}

	public Object getDato(){
		return(this.dato);
	}

	//funciones sobreescritas de object
	public int HashCode(){
		return((int)(100*Math.random()+1));
	}

	public Object Clone(){
		return(new Nodo(this.getDato(),this.getSig()));
	}

	public boolean Equals(Object nd2){
		if (this==nd2) return true;//compruebo si no es la misma referencia
		if(nd2==null) return false;//compruebo que el parametro no sea nulo
		if(this.getClass()!=nd2.getClass()) return false;//compruebo que sean de la misma clase
		//comparo por parametros
		Nodo aux=(Nodo)nd2;
		return(this.dato.equals(aux.dato));
	}

	public String toString(){
		return(this.getClass().getName() + " | " + (this.getDato()).toString());
	}
}