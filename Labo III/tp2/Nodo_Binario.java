/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Nodo_Binario.java (Clase Nodo_Binario)
Terminado OK
*/
public class Nodo_Binario implements Cloneable{
	private Object dato;
	private Nodo_Binario izq;
	private Nodo_Binario der;

	//constructor
	public Nodo_Binario(Object data){
		this.setDato(data);
		this.setDer(null);
		this.setIzq(null);
	}

	public Nodo_Binario(Object data,Nodo_Binario der,Nodo_Binario izq){//constructor sobrecargado
			this.setDato(data);
			this.setDer(der);
			this.setIzq(izq);
	}

	//setters y getters
	public void setDato(Object data){
		this.dato=data;
	}

	public Object getDato(){
		return(this.dato);
	}

	public void setIzq(Nodo_Binario nd_izq){
		this.izq=nd_izq;
	}

	public Nodo_Binario getIzq(){
		return(this.izq);
	}

	public void setDer(Nodo_Binario nd_der){
		this.der=nd_der;
	}

	public Nodo_Binario getDer(){
		return(this.der);
	}

	//sobrecargas de Object

	public int HashCode(){
		return((int)(100*Math.random()+90));
	}

	public Object Clone(){
		return(new Nodo_Binario(this.getDato(),this.getDer(),this.getIzq()));
	}

	public String toString(){
		return(this.getClass().getName() + (this.getDato().toString()));
	}

	public boolean equals(Object nd2){
		if (this==nd2) return true;
		if (nd2==null) return false;
		if (this.getClass()!=nd2.getClass()) return false;
		Nodo_Binario aux=(Nodo_Binario)nd2;
		return(this.getDato().equals(aux.getDato()));
	}

}