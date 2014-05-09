/*
Alumno: Vilerino,Silvio
Curso: 6to 1ra Turno Noche
Fecha:03-04-2010
Archivo: Clase Main
*/
public class Main{
	public static void main(String args[]){
		if(args.length<3){
			System.out.println("\n\nError de parametros.\n\nParametros:  <dimension> <rango_minimo> <rango_maximo>");
			System.out.println("Donde <rango_minimo> y <rango_maximo>\nEstan referidos al rango de numeros al azar de la matriz.\n\n");
		}else{
			//Convierto tipos de entrada
			Integer n=new Integer(args[0]);
			Integer min=new Integer(args[1]);
			Integer max=new Integer(args[2]);
			Matriz mat,mat2;//mat=A;mat2=B    para mejor claridad de salida de datos por consola
			//Instancio Matriz 1 y 2
			mat=new Matriz(n,min,max);
			mat2=new Matriz(n,min+5,max+9);
			System.out.println("\n----------------------------------------------------------------------");

			//Imprimo Matriz Original
			System.out.println("Matriz A:");
			mat.printMat();
			System.out.println("----------------------------------------------------------------------");

			//Determinante de mat
			if(n>1)
				System.out.println("Det(A) = (" + mat.getDeterminante() + ")");
			System.out.println("----------------------------------------------------------------------");

			//definida positiva mat
			System.out.println("A es Definida Positiva ? " + (mat.defPositiva()));
			System.out.println("----------------------------------------------------------------------");

			//cramer mat
			System.out.println("Regla de Cramer:");
			int vec[]=new int[n];
			for(int a=0;a<n;a++)
				vec[a]=(int)((max-min+1)*Math.random()+min);//armo un vector solucion al azar
			mat.getCramer(vec);
			System.out.println("----------------------------------------------------------------------");

			//Inversa
			mat.getInversa();
			System.out.println("----------------------------------------------------------------------");

			//Idempotente
			System.out.println("A es Idempotente (A.A=A) ? " + (mat.isIdempotente()));
			System.out.println("----------------------------------------------------------------------");

			//Triangulacion
			mat.triangularGauss();
			System.out.println("----------------------------------------------------------------------");

			//Comparador
			System.out.println("Comparador de Objetos Matriz:");
			System.out.println("A=A " + Matriz.matCmp(mat,mat,n));
			System.out.println("A=A2 " + Matriz.matCmp(mat,mat2,n));
			System.out.println("----------------------------------------------------------------------");

			//instancias
			System.out.println("Se Crearon: " + Matriz.getInstances() + " Instancias de la clase Matriz");
			System.out.println("----------------------------------------------------------------------\nFin de la Aplicacion");
		}
	}
}
