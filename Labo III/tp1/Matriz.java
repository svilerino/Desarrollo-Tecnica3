/*
Alumno: Vilerino,Silvio
Curso: 6to 1ra Turno Noche
Fecha:03-04-2010
Archivo: Clase Matriz (TP1)

Constructores:

	Matriz(int [][],int dimension) (constructor con matriz de origen)

	Matriz(int n,int minimo,int maximo) (constructor)


Metodos Publicos:

	int getN() : Devuelve la dimension del atributo mat

	int getElementobyPos(int fila,int columna): Devuelve el elemento mat[fila][columna]

	int getInstances() (estatico):devuelve cantidad de instancias de la clase Matriz

	void printMat(): imprime la matriz

	boolean matCmp(Matriz,Matriz,dimension): Compara dos objetos de la clase Matriz

	int getDeterminante(): Devuelve el determinante de la matriz, ya sea por sarrus o cofactores segun corresponda

	bool defPositiva(): Devuelve true o false segun la Matriz sea o no definida positiva

	void triangularGauss() : triangula la matriz por el metodo de gauss

	void getCramer(int solucion[]) : calcula los valores Xn, hay que pasarle la columna solucion de longuitud n

	void getInversa(): calcula la matriz inversa y la imprime,no devuelve ya que la matriz inv. es de punto flotante

	bool esIdempotente(): devuelve true o false segun la matriz sea o no idempotente

*/

public class Matriz{
	private int mat[][];
	private int n;
	private int min;
	private int max;
	private static int instancias;

	public int getN(){return(n);}//Devuelve la dimension del atributo mat
	public int getElementbyPos(int fil,int col){return(mat[fil][col]);}//devuelve el elemento fil,col de mat
	public static int getInstances(){return(instancias);}//devuelve cantidad de instancias creadas de la clase Matriz

	public Matriz(int mat_origen[][],int dimension){
		//Inicializo atributos
		n=dimension;
		min=0;
		max=0;
		//Creo Array de NxN
		mat=new int[n][n];
		instancias++;//Aumento cantidad de instancias registradas
		for(int posi=0;posi<(n*n);posi++)//Copio de matriz pasada por parametros
			mat[posi/(int)n][posi%n]=mat_origen[posi/(int)n][posi%n];
	}

	public Matriz(int dimension,int rangomin,int rangomax){
		//Inicializo atributos
		n=dimension;
		min=rangomin;
		max=rangomax;
		//Creo Array de NxN
		mat=new int[n][n];
		instancias++;//Aumento cantidad de instancias registradas
		fillMat();//Lleno con rango pasado por parametros
	}

	private void fillMat(){//Llena con numeros al azar
		for(int posi=0;posi<(n*n);posi++)
			mat[posi/(int)n][posi%n]=(int)((max-min+1)*Math.random()+min);
	}

	private int[][] getCopyMat(){//Devuelve una copia exacta del atributo privado mat
		int aux[][]=new int[n][n];
		for(int posi=0;posi<(n*n);posi++)
			aux[posi/(int)n][posi%n]=mat[posi/(int)n][posi%n];
		return(aux);
	}

	public void printMat(){//Imprime el atributo mat[][] en pantalla
		System.out.println("\nDimension: " + n + " x " + n + ":\n");
		for(int posi=0;posi<(n*n);posi++){
			System.out.print("(_" + mat[posi/(int)n][posi%n] + "_)");
			if(posi%n==(n-1))System.out.println();
		}
	}

	public static boolean matCmp(Matriz mat1,Matriz mat2,int dim){//Compara dos objetos Matriz
		int posi=0;
		for(posi=0;( (posi<((dim*dim)-1) ) && (mat1.getElementbyPos(posi/(int)dim,posi%dim)==mat2.getElementbyPos(posi/(int)dim,posi%dim)));posi++){}
		return(posi==((dim*dim)-1));
	}

	public int getDeterminante(){
		if(n<4)//Si es de dimension menor o igual a 3, saca determinante por sarrus sino, llama al metodo de cofactores
			return(getSarrusDet());
		return(getCofDet());
	}

	private int getSarrusDet(){
		//El metodo almacena los productos de las diagonales en sumas y restas y los va volcando en det
		int det=0,sumas=1,restas=1,a=0,posi=0;
		if(n==1) return(mat[0][0]);//dimension 1(validacion para adjuntas peque;as)
		if(n==3){
			for(a=0;a<n;a++){
				//Diagonales Suma
				for(posi=(a*n);posi<=((a*n)+8);posi+=4)//posi=(a*n);posi<=((a*n)+((2*n)+2));posi+=(n+1)
					if(posi>8)
						sumas*=mat[(posi-9)/(int)n][(posi-9)%n];
					else
						sumas*=mat[posi/(int)n][posi%n];
				det+=sumas;
				sumas=1;
				//Diagonales Resta
				for(posi=(a*n)+2;posi<=(a*n)+6;posi+=2)
					if(posi>8)
						restas*=mat[(posi-9)/(int)n][(posi-9)%n];
					else
						restas*=mat[posi/(int)n][posi%n];
				det-=restas;
				restas=1;
			}
		}else
			det=(mat[0][0]*mat[1][1])-(mat[0][1]*mat[1][0]);
		return(det);
	}

	private int getCofDet(){
		int retorno=0;
		for(int col=0;col<n;col++)//Saca cofactores de los elementos de la primer fila
			if(mat[0][col]!=0){
				Matriz A=new Matriz(getAdjMatbyPos(0,col),(n-1));//creo una matriz de n-1*n-1 y almaceno la matriz adjunta de (0,col)
				retorno+=mat[0][col]*Math.pow((-1),col)*A.getDeterminante();//Aij*(-1)^i+j*|ADJij|   (el metodo getDeterminante desvia a sarrus o recursivamente a cofactores,segun corresponda)
			}
		return(retorno);
	}

	private int[][] getAdjMatbyPos(int fila,int columna){
		//Devuelve una matriz de (n-1)*(n-1) anulando la fila y columna pasada por parametros.
		int aux[][]=new int[n-1][n-1];
		int posiaux=0;
		for(int posi=0;posi<(n*n);posi++)
			if(((posi/(int)n)!=fila) && ((posi%n)!=columna)){
				aux[posiaux/(int)(n-1)][posiaux%(n-1)]=mat[posi/(int)n][posi%n];
				posiaux++;
			}
		return(aux);
	}

	private int[][] getMatReducida(int reduccion){
		//Devuelve la porcion superior izquierda de la matriz determinando la dimension por el parametro reduccion
		reduccion++;//Aumento uno por new[tamanio real];
		int aux[][]=new int[reduccion][reduccion];
		for(int posi=0;posi<(reduccion*reduccion);posi++)
				aux[posi/(int)reduccion][posi%reduccion]=mat[posi/(int)reduccion][posi%reduccion];
		return(aux);
	}

	public boolean defPositiva(){
		if(mat[0][0]<=0)return(false);//comprueba el elemento 0,0
		int a=1;
		Matriz A;
		do{//Comprueba que de menor(2x2) a mayor(N-1xN-1) , los determinantes de las matrices reducidas sean > 0
			A=new Matriz(getMatReducida(a),a+1);
			a++;
		}while((a<n) && (A.getDeterminante()>0));
		if(getDeterminante()<=0)return(false);//Comprueba el determinante de mat
		return!(a<n);//si no llego a n, es porque antes habia un determinante que no cumplia con la condicion DET > 0
	}

	public void triangularGauss(){//mat,dimension,indice=0
		int vec[]=new int[n];//filas auxiliares
		int vec2[]=new int[n];
		int vecsalida[]=new int[n];//fila con nuevos 0 para reemplazar en mat
		int f1fil=0,j=0,i=0;
		for(int diag=0;diag<n;diag++){//Recorro la diagonal principal
			for(int a=diag+1;a<n;a++){
				//if(mat[a][diag]!=0){
				if(1==1){
				if(mat[a][diag]==)
				//triangulo fila a
					//for(i=0;i<n && mat[i][diag]==0;i++){}
					//	if(i<n && i!=a) j=i;
					//j=a-1;
					j=a-1;//fila por la cual multiplico
					System.out.println("triangular (" + a + ";" + diag + ") = " + mat[a][diag]);
					System.arraycopy(mat[j],0,vec,0,n);
					System.arraycopy(mat[a],0,vec2,0,n);
					System.out.println("\tTriangular por Fila " + (j) + "(" + (j) + ";" + diag + ") = " + mat[j][diag]);
					for(int col=0;col<n;col++){
						vec[col]*=mat[a][diag];
						vec2[col]*=mat[j][diag];
						vecsalida[col]=vec2[col]-vec[col];
					}
					System.arraycopy(vecsalida,0,mat[a],0,n);
				}
			}
			System.out.println();
		}
		printMat();
	}

	private int[][] setColInMat(int col,int contenido[],int matriz[][]){
		/*Llena la columna col de la matriz indicada por parametro con el vector
		 pasado por parametro.*/
		for(int fil=0;fil<n;fil++)
			matriz[fil][col]=contenido[fil];
		return(matriz);
	}

	public void getCramer(int col_solucion[]){
		int a=0,col=0,fil=0;
		Matriz A;
		int aux[][];
		System.out.println("\nSistema de: " + n + "x" + n + ":\n");
		for(fil=0;fil<n;fil++){
			for(col=0;col<n;col++)
				System.out.print("+(" + mat[fil][col] + ")*x" + col + " ");
			System.out.println("  =   (" + col_solucion[fil] + ")");
		}
		System.out.println("\nMatriz Asociada al Sistema:\n");
		for(fil=0;fil<n;fil++){
			for(col=0;col<n;col++)
				System.out.print("(" + mat[fil][col] + ")");
			System.out.println(" | (" + col_solucion[fil] + ")");
		}
		System.out.println("");
		float soluciones[]=new float[n];
		int detMat=getDeterminante();
		if(detMat!=0){//Compruebo DET A !=0 para obtener Cramer
			for(a=0;a<n;a++){//columnas Xa;Soluciones Xa
				aux=getCopyMat();//Obtengo una copia exacta de mat
				aux=setColInMat(a,col_solucion,aux);//intercambio por la columna solucion para cada Xa
				A=new Matriz(aux,n);
				soluciones[a]=A.getDeterminante()/(float)detMat;
				System.out.println("Solucion X" + a + " = (" + soluciones[a] + ")");
			}
		}else
			System.out.println("Determinante Nulo, Matriz Invalida para aplicar la regla de Cramer.");
	}

	public /*float [][]*/void getInversa(){//no devuelvo nada porque la matriz inv. es de punto flotante
		//A^(-1)=T(ADJ(A))/Det(A);
		System.out.println("mat^(-1)\n");
		int adj_A[][]=new int[n][n];//float adj_A...
		int det_mat=getDeterminante();
		Matriz adjs;
		int posi=0;
		if(det_mat!=0){
			for(posi=0;posi<(n*n);posi++){//saco los Adj(this[i][j])
				adjs=new Matriz(getAdjMatbyPos((posi/(int)n),(posi%n)),(n-1));
				adj_A[posi/(int)n][posi%n]=adjs.getDeterminante();
			}
			adj_A=trasponerMat(adj_A,n);//saco T(ADJ(A))
			for(posi=0;posi<(n*n);posi++){
				//adj_A[posi/(int)n][posi%n]*=(1/det_mat); punto flotante
				//System.out.print("( " + adj_A[posi/(int)n][posi%n]*(1/(float)det_mat) + " )");
				System.out.print("( " + adj_A[posi/(int)n][posi%n] + "/" + det_mat + " )");
				if(posi%n==(n-1))System.out.println();
			}
		}else
			System.out.println("Determinante Nulo, Matriz No Inversible.");
		//return(adj_A);
	}

	private int[][] trasponerMat(int matriz[][],int dim){
		int aux[][]=new int [dim][dim];//guardo matriz auxiliar con filas y columnas invertidas
		for(int a=0;a<dim;a++)
			for(int b=0;b<dim;b++)
				aux[a][b]=matriz[b][a];
		return(aux);
	}

	public boolean isIdempotente(){//this = referencia al objeto actual
		Matriz mat2=new Matriz(productoMat(getCopyMat(),getCopyMat(),n),n);
		return matCmp(this,mat2,n);//multiplico la matriz por si misma y utilizo el metodo comparador
	}

	private int[][] productoMat(int mat1[][],int mat2[][],int dim){
		int retorno[][]=new int[dim][dim];//mat3
		for(int posi=0;posi<(dim*dim);posi++)//indices para mat3
			for(int posprod=0;posprod<dim;posprod++)//recorro filas y columnas en mat2 y mat1 respectivamente , multiplico y almaceno su valor en mat3
				retorno[posi/(int)n][posi%n]+=mat1[posi/(int)n][posprod]*mat2[posprod][posi%n];
		return(retorno);
	}
}