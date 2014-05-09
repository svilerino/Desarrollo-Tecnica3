/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Pila.java (Clase Pila)
Terminado.OK
*/
public class Pila extends Lineales{
	public boolean isEmpty(){return(this.getLargo()==0);}//Operacion basica Pila

	public Pila(){
		cantidad_nodos=0;
		primer_nodo=null;
		ultimo_nodo=null;
	}

	public void addNodo(Object data){//push
		Nodo aux=this.getFstNodo();
		if(aux==null)
			primer_nodo=new Nodo(data);//si cola esta vacia, pongo el primer nodo y sig apunta a null
		else
			primer_nodo=new Nodo(data,aux);//pone el nodo al principio y engancha con el nodo existente
		cantidad_nodos++;
	}

	public void desApilar(){//pop - elimina primer nodo y engancha el siguiente
		if(this.getLargo()>0){
			primer_nodo=(this.getFstNodo()).getSig();
			cantidad_nodos--;
		}
	}

	public boolean dltNodo(Object data){
		if (this.getLargo()==0) return false;
		boolean borrado=false;
		if(data.equals(this.getFstNodo().getDato())){
			this.desApilar();
			return true;
		}
		Pila auxpila=new Pila();
		while((this.getLargo()>0) && (!this.getFstNodo().getDato().equals(data))){
			auxpila.addNodo(this.getFstNodo().getDato());
			this.desApilar();
		}

		if(this.getLargo()>0){
			this.desApilar();
			borrado=true;
		}else{
			borrado=false;
		}

		while(auxpila.getLargo()>0){
			this.addNodo(auxpila.getFstNodo().getDato());
			auxpila.desApilar();
		}

		return borrado;
	}

	public int hashcode(){
		return((int)Math.pow((this.getLargo()+3),2));
	}

	public String toString(){
		String strSalida=this.getClass().getName();
		strSalida+=" | Largo de la Pila (Cantidad de Nodos): " + this.getLargo() + "\n";
		strSalida+="hashCode: " + this.hashcode() + "\n\n";
		strSalida+= "\tPrimer Nodo Apilado ( " + this.getFstNodo() + " )\n\n";
		return(strSalida);
	}

	public Object clone(){//Reemplazar por Cola
		Pila auxpila1=new Pila();
		Pila auxpila2=new Pila();

		while(this.getLargo()>0){
			auxpila1.addNodo(this.getFstNodo().getDato());
			this.desApilar();
		}

		while(auxpila1.getLargo()>0){
			this.addNodo(auxpila1.getFstNodo().getDato());
			auxpila2.addNodo(auxpila1.getFstNodo().getDato());
			auxpila1.desApilar();
		}

		return(auxpila2);
	}

	public boolean equals(Object pilaaux){
		if(this==pilaaux) return true;
		if(pilaaux==null) return false;
		if(this.getClass()!=pilaaux.getClass()) return false;
		Pila pila2=(Pila)pilaaux;
		if(this.getLargo()!=pila2.getLargo()) return false;
		if(this.hashcode()!=pila2.hashcode()) return false;

		int a=0;
		Pila aux=(Pila)this.clone();
		Pila aux2=(Pila)((Pila)pilaaux).clone();
		int largopila=aux.getLargo();
		for(a=0;(a<largopila)&&!(aux.getFstNodo().equals(aux2.getFstNodo()));a++){
			aux.desApilar();//comparo por datos en nodo hasta que haya uno distinto o no haya mas elementos
			aux2.desApilar();
		}
		return (a<=largopila);
	}

}