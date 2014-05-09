package modelo;

import java.awt.geom.Point2D;

public class MatUtil {

	public static Point2D getRandomNeighbour(int x, int y, int filas, int columnas){
		int a=0;
		int b=0;
		do{
			do{
				a=(int) Math.round((( Math.random()* 3 ) - 1));
				b=(int) Math.round((( Math.random()* 3 ) - 1));
			}while((a == b) && (a == 0));
		}while(!validNeighbour(x+a, y+b, filas, columnas));
		return new Point2D.Double(x+a, y+b);
	}

	public static boolean validNeighbour(int x, int y, int filas, int columnas){
		return( (x>=0) && (y>=0) && (x<filas) && (y<columnas) );
	}

	public static int getMostPopularBySum(int mat[][], int x, int y, int filas, int columnas){
		int sum=0;
		int vecinos=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if(validNeighbour(x+a, y+b, filas, columnas)){
					sum+=mat[a+x][b+y];
					vecinos++;
				}
			}
		}
		if(sum>(vecinos/2)){
			return 1;
		}else{
			return 0;
		}
	}

	public static int getAliveCells(int mat[][], int x, int y, int filas, int columnas){
		int sum=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if((a!=b) || (a!=0)){
					if(validNeighbour(x+a, y+b, filas, columnas)){
						sum+=mat[a+x][b+y];
					}
				}
			}
		}
		return sum;
	}

	public static int getMostPopularNeighbour(int mat[][], int x, int y, int filas, int columnas){
		int veces=0;
		int valorPopular=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if(validNeighbour(x+a, y+b, filas, columnas)){
					if((a!=b) || (a!=0)){
						int aux=getNeighbourCount(x, y, mat[x+a][y+b], mat, filas, columnas);
						if(aux>veces) {
							veces=aux;
							valorPopular=mat[x+a][y+b];
						}
					}
				}
			}
		}
		return valorPopular;
	}

	public static int getNeighbourCount(int x, int y, int valor, int mat[][], int filas, int columnas) {
		int count=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if((a!=b) || (a!=0)){
					if(validNeighbour(x+a, y+b, filas, columnas)){
						if(mat[x+a][y+b]==valor) count++;

					}
				}
			}
		}
		return count;
	}

	public static int[][] getFilledMat(int fil, int col, int min, int max){
		int mat[][] = new int[fil][col];
		for(int a=0;a<fil;a++){
			for(int b=0;b<col;b++){
				mat[a][b]=(int) ((Math.random()*(max-min+1))+min);
			}
		}
		return mat;
	}

	public static void printMat(int mat[][], int fil, int col){
		for(int a=0;a<fil;a++){
			for(int b=0;b<col;b++){
				System.out.print(" [" + mat[a][b] + " ]");
			}
			System.out.println();
		}
	}

	public static int[][] copyMatByVal(int mat[][]){
		int aux[][]=new int[mat.length][mat[0].length];
		for(int a=0;a<mat.length;a++){
			for(int b=0;b<mat[0].length;b++){
				aux[a][b]=mat[a][b];
			}
		}
		return aux;
	}
}
