/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Lista.java (Clase Lista)
Terminado.OK
*/

public class Lista extends Lineales{

	public Lista(){
		cantidad_nodos=0;//inicializa variables - constructor
		primer_nodo=null;
		ultimo_nodo=null;
	}

	public void addNodo(Object data){
		Nodo nod_aux=this.getFstNodo();
		if(nod_aux==null){//inserto el primer nodo
			primer_nodo=new Nodo(data);
		}else{//inserto el nodo al final
			while(nod_aux.getSig()!=null)
				nod_aux=nod_aux.getSig();
			nod_aux.setSig((Nodo)new Nodo(data));
		}
		cantidad_nodos++;//aumento cantidad de nodos
	}

	public boolean dltNodo(Object data){
		Nodo aux=this.getFstNodo();
		Nodo aux2=null;
		int a=0;
		if(this.getLargo()==0) return false;//Lista Vacia
		if(aux.getDato().equals(data)){//si es el primer nodo
			primer_nodo=aux.getSig();
			aux=null;
			cantidad_nodos--;//resto largo de la lista
			return true;
		}else{//si no es el primer nodo
			if(this.getLargo()==1) return false;//si tiene un solo nodo y no es el primero no esta en la lista
			while( (aux.getSig()!=null) && !( (aux.getSig()).getDato().equals(data)) )
				aux=aux.getSig();
			if(aux.getSig()==null)
				return false;//no se encontro el nodo con dicho dato
			else{
				if((aux.getSig()).getSig()==null){//si es el ultimo nodo el que tiene el dato
					aux.setSig(null);
					cantidad_nodos--;
					return true;
				}else{//si es del medio,
					aux.setSig((aux.getSig()).getSig());
					cantidad_nodos--;
					return true;
				}
			}
		}

	}

	public String toString(){
		Nodo aux=this.getFstNodo();
		String strSalida=this.getClass().getName();
		strSalida+=" | Largo de la Lista (Cantidad de Nodos): " + this.getLargo() + "\n";
		strSalida+="hashCode: " + this.hashcode() + "\n\n";
		while(aux!=null){
			strSalida+="\t( " + aux + " )\n";
			aux=aux.getSig();
		}
		return(strSalida);
	}

	public Object clone(){
		Lista lst2=new Lista();
		Nodo aux=this.getFstNodo();
		while(aux!=null){//copia nodos en la lista auxiliar
			lst2.addNodo(aux.getDato());
			aux=aux.getSig();
		}
		return(lst2);
	}

	public int hashcode(){
		return(this.getLargo()*this.getLargo()*(int)Math.pow((-1),this.getLargo()));
	}

	public boolean equals(Object obj2){
		Lista obj3=(Lista)obj2;
		if (this==obj2) return true;//comparo por referencia
		if(obj2==null) return false;//comparo referencia nula
		if(obj2.getClass()!=this.getClass()) return false;//Comparo por clase
		if(obj3.getLargo()!=this.getLargo()) return false;//comparo por largo(cant nodos)
		if(obj3.hashcode()!=this.hashcode()) return false;//Comparo por hashcode

		Nodo aux=getFstNodo();
		Nodo aux2=obj3.getFstNodo();
		int a=0;

		for(a=0;(aux!=null && aux2!=null)&&(aux.getDato().equals(aux2.getDato()));a++){
			aux=aux.getSig();//comparo por datos en nodo hasta que haya uno distinto o termine la lista
			aux2=aux2.getSig();
		}
		return (a<=this.getLargo());
	}
}
