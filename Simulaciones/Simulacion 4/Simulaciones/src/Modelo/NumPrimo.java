package Modelo;

public class NumPrimo{
	public static boolean esPrimo(int nro){
		int a;
		for(a=2;(a<=(int)(Math.pow(nro,.5))) && (nro%a!=0);a++){}
		return(a>(int)(Math.pow(nro,.5)));
	}

	public static int getPrimo(int posicion,int primomin){
		int x=primomin;
		int primos=0;
		do{
			x++;
			if(NumPrimo.esPrimo(x)){
				primos++;
			}
		}while(primos<posicion);
		//System.out.println("Num Primo:" + x);
		return x;
	}
	
	public static void main(String args[]){
		System.out.println(NumPrimo.esPrimo(1865471));
		System.out.println(NumPrimo.esPrimo(1999993));
		System.out.println(NumPrimo.esPrimo(1865533));
		System.out.println(NumPrimo.esPrimo(1999273));
	}
}
