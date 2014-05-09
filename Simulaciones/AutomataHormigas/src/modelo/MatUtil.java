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
		if( (x>=0) && (y>=0) && (x<filas) && (y<columnas) ) return true;
		return false;
	}

	public static int getMostPopularNeighbour(int mat[][], int x, int y){
		int veces=0;
		int valorPopular=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if((a!=b) || (a!=0)){
					int aux=getNeighbourCount(x, y, mat[x+a][y+b], mat);
					if(aux>veces) {
						veces=aux;
						valorPopular=mat[x+a][y+b];
					}
				}
			}
		}
		System.out.println(veces);
		return valorPopular;
	}

	private static int getNeighbourCount(int x, int y, int valor, int mat[][]) {
		int count=0;
		for(int a=-1;a<=1;a++){
			for(int b=-1;b<=1;b++){
				if((a!=b) || (a!=0)){
					if(mat[x+a][y+b]==valor) count++;
				}
			}
		}
		return count;
	}
}
