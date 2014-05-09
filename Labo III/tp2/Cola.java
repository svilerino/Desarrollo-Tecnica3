/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Cola.java (Clase Cola)
Terminado OK.
*/
public class Cola extends Lineales{
	public boolean isEmpty(){return(this.getLargo()==0);}//Operacion basica Cola

	public Cola(){
		this.primer_nodo=null;
		this.ultimo_nodo=null;
		this.cantidad_nodos=0;
	}

	public String toString(){
		String strSalida=this.getClass().getName();
		strSalida+=" | hashCode: " + this.hashcode() + "\n\n";
		strSalida+= "\tPrimer Nodo ( " + this.getFstNodo() + " )\n\n";
		strSalida+= "\tUltimo Nodo ( " + this.getLstNodo() + " )\n\n";
		return(strSalida);
	}

	public int hashcode(){
		return((this.getLargo()*9)-5);
	}

	public boolean equals(Object obj2){
		if(this==obj2) return true;
		if(obj2==null) return false;
		if(this.getClass()!=obj2.getClass()) return false;
		Cola aux=(Cola)obj2;
		if(this.getLargo()!=aux.getLargo()) return false;
		if(this.hashcode()!=aux.hashcode()) return false;

		Cola _this=(Cola)this.clone();
		Cola _aux=(Cola)aux.clone();
		int cant=_this.getLargo();
		int a=0;
		try{
			for(a=0;(a<cant)&&(!_this.getLstNodo().equals(_aux.getLstNodo()));a++){
				_this.unQueue();
				_aux.unQueue();
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return(a>=cant);
	}

	public Object clone(){
		Cola aux=new Cola();
		int cant=this.cantidad_nodos;
		for(int a=0;a<cant;a++){
			aux.addNodo(this.getLstNodo().getDato());
			this.addNodo(this.getLstNodo().getDato());
			this.unQueue();
		}
		return(aux);
	}

	public void addNodo(Object data){//Encolar
 		Nodo aux=this.getFstNodo();
		if(aux==null){//si es el primer nodo
			this.primer_nodo=new Nodo(data);
			this.ultimo_nodo=primer_nodo;
		}else{//si ya existe un primer nodo
			this.primer_nodo=new Nodo(data,aux);
		}
		this.cantidad_nodos++;
	}

	public boolean dltNodo(Object data){
		if(this.isEmpty()) return false;
		boolean bandera=false;
		int a=0,cant=this.getLargo();
		for(a=0;a<cant;a++){
			if(!this.getLstNodo().getDato().equals(data)){
				this.addNodo(this.getLstNodo().getDato());
			}else{
				bandera=true;
			}
			this.unQueue();
		}

		return bandera;
	}

	public void unQueue(){//desencolar
		Nodo aux=this.getFstNodo();
		if(aux==null){
			System.out.println("Cola Vacia");
		}else if (aux.getSig()==null){
			primer_nodo=null;
			ultimo_nodo=null;
		}else{
			while(aux.getSig().getSig()!=null)
				aux=aux.getSig();
			aux.setSig(null);
			ultimo_nodo=aux;
		}
		cantidad_nodos--;
	}
}