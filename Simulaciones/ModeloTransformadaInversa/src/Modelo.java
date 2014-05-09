import java.util.ArrayList;
import java.util.Arrays;

import javax.swing.JOptionPane;
/**
 * @author Silvio
 */
public class Modelo {
	private static final int var_a=1;
	private static final int var_b=10;
	private static double seed=0.1;
	private static ArrayList<String> data;
	private static int[] histo;
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		data=new ArrayList<String>();
		histo=new int[10];
		for(double a=1;a<1000000;a++){
			seed=Math.random();
			double number=gna();
			data.add(String.valueOf(number));
			histo[(int)number-1]++;
		}
		data.add(Arrays.toString(histo));
		FileUtil.writeText(System.getProperty("user.dir") + "\\simulacionInversa.txt", data);
		JOptionPane.showMessageDialog(null, "Listo. Archivo guardado en: " + System.getProperty("user.dir") + "\\simulacionInversa.txt");
	}

	private static double gna(){
		return (var_a*Math.pow(Math.E, Math.log(10)*seed));
	}
}
