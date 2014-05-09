import java.util.ArrayList;
import java.util.Arrays;

import javax.swing.JOptionPane;
/**
 * @author Silvio
 */
public class Modelo {
	private static final int min=1;
	private static final int max=10;
	private static ArrayList<String> data;
	private static int[] histo;
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		data=new ArrayList<String>();
		histo=new int[10];
		int contSi=0;
		int contNo=0;
		int contTotal=0;
		double numero=0.0D;
		double discriminante=0.0D;
		int totalAGenerar=1000000;

		while(contSi<totalAGenerar){
			double number=((max-min)*Math.random())+min;
			if(valeRandom(number)){
				contSi++;
				//data.add(String.valueOf(number));
				histo[(int)number-1]++;
			}
			contTotal++;
		}
		contNo=contTotal-contSi;
		data.add(Arrays.toString(histo));
		System.out.println("Total Numeros Generados: " + contTotal);
		data.add("Total Numeros Generados: " + contTotal);
		System.out.println("Total Numeros Admitidos: " + contSi);
		data.add("Total Numeros Admitidos: " + contSi);
		System.out.println("Total Numeros Rechazados: " + contNo);
		data.add("Total Numeros Rechazados: " + contNo);
		FileUtil.writeText(System.getProperty("user.dir") + "\\ModeloRechazo.txt", data);
		JOptionPane.showMessageDialog(null, "Listo. Archivo guardado en: " + System.getProperty("user.dir") + "\\ModeloRechazo.txt");
	}


	private static double probabilidadNormalizada(double x){
		return (1/(double)(x*Math.log(10)));
	}

	private static boolean valeRandom(double numero){
		return(Math.random()<=probabilidadNormalizada(numero));
	}
}
