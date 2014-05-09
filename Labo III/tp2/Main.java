/*
Alumno: Silvio, Vilerino
Curso: 6to 1ra
Turno Noche
Archivo: Main.java (Clase Main)
Terminado.OK
*/
public class Main{
	public static void main(String args[]){
		System.out.println("\n\n Tp2. Vilerino Silvio ------------------------------------------\n\n");
		System.out.println("\n\n Listas --------------------------------------------------------\n\n");
		Estructuras conjunto[]=new Estructuras[10];

		conjunto[0]=new Lista();
		conjunto[0].addNodo(12345);
		conjunto[0].addNodo(9087);
		conjunto[0].addNodo("String en Una Lista");
		conjunto[0].addNodo(1234);
		conjunto[0].addNodo(3215.5583);
		System.out.println("\nClon de Lista 1 ===> Lista 2");
		conjunto[1]=(Lista)conjunto[0].clone();
		System.out.println("Lista 1 es igual a Lista 2 (Clon)? : " + conjunto[0].equals(conjunto[1]));
		System.out.println("Se Elimino un nodo de lista 2? : " + conjunto[1].dltNodo("String en Una Lista"));
		System.out.println("Lista 1 es igual a Lista 2 (Modificada)? : " + conjunto[0].equals(conjunto[1]));

System.out.println("\n\n Pilas --------------------------------------------------------\n\n");
		conjunto[2]=new Pila();
		conjunto[2].addNodo("Nodo de la Pila");
		conjunto[2].addNodo(7654);
		conjunto[2].addNodo(9897);
		conjunto[2].addNodo("Ultimo Nodo de la Pila");
		conjunto[3]=(Pila)conjunto[2].clone();
		System.out.println("\n\tPila2 ==> Clon Pila 1 \n\n");
		System.out.println("Son iguales Pila 1 y Pila 2? " + conjunto[2].equals(conjunto[3]));
		System.out.println("Se Elimino un Nodo de la Pila? " + conjunto[2].dltNodo("Ultimo Nodo de la Pila") + "\n");
		System.out.println("Se Elimino un Nodo de la Pila? (No existe el dato) " + conjunto[2].dltNodo("este dato no existe") + "\n");
		System.out.println("Se Elimino un Nodo de la Pila? " + conjunto[2].dltNodo(9897) + "\n");
		System.out.println("Se Elimino un Nodo de la Pila? " + conjunto[2].dltNodo(7654) + "\n");
		System.out.println("Son iguales Pila 1 y Pila 2 (modificada)? " + conjunto[2].equals(conjunto[3]));
System.out.println("\n\n Colas --------------------------------------------------------\n\n");

		conjunto[4]=new Cola();
		conjunto[4].addNodo("Nodo encolado 1");
		conjunto[4].addNodo("Nodo encolado 2");
		conjunto[4].addNodo("Nodo encolado 3");
		conjunto[4].addNodo("Nodo encolado 4");
		conjunto[4].addNodo("Nodo encolado 5");
		conjunto[4].addNodo("Nodo encolado 6");
		conjunto[4].addNodo("Nodo encolado 7");
		conjunto[4].addNodo("Nodo encolado 8");
		//System.out.println(conjunto[4]);
			//Cola aux=(Cola)conjunto[4];
			//aux.unQueue();
			//aux.unQueue();
		System.out.println("Clon Cola 1==>Cola 2");
		conjunto[5]=(Cola)conjunto[4].clone();
		System.out.println("Cola 1==new Cola() ? :" + conjunto[4].equals(new Cola()));
		System.out.println("Cola 1==Cola 2 ? :" + conjunto[4].equals(conjunto[5]));
		System.out.println("Se borro un nodo de la cola?" + conjunto[5].dltNodo("Nodo encolado 8"));
		System.out.println("Cola 1==Cola 2(modificada) ? :" + conjunto[4].equals(conjunto[5]));
		System.out.println("\n\n\n\t\tTodas las Estructuras generadas:\n\n\n\n\n\n");
		Estructuras.mostrarTodas(conjunto);
	}
}

