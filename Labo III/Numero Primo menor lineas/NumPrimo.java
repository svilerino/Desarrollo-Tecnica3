import java.awt.*;
import java.math.*;
public class NumPrimo{
	public static void main(String args[]){
		System.out.println("\nEl numero " + args[0] + " es primo ? " + esPrimo( Integer.parseInt(args[0])));
		/*for(int a=2;a<=100;a++)
			if(esPrimo(a))
				System.out.println("\nEl numero " + a + " es primo ? SI");*/
	}
	public static boolean esPrimo(int nro){
		int a;
		for(a=2;(a<=(int)(Math.pow(nro,.5))) && (nro%a!=0);a++){}	
		return(a>(int)(Math.pow(nro,.5)));
	}
}
