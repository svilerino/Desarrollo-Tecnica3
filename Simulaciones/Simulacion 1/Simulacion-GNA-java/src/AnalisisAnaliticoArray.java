import java.util.Arrays;


public class AnalisisAnaliticoArray {
	double num_array[];
	int repeticiones[];
	double promedio;
	double promedio_histo;
	double dispersion;
	double dispersion_histo;

	public AnalisisAnaliticoArray() {
		this.num_array=new double[1000000];
		this.repeticiones=new int[10];
		this.dispersion=0;
		this.dispersion_histo=0;
		this.promedio=0;
		this.promedio_histo=0;
		//Promedio
		for(int a=0;a<1000000;a++){
			this.num_array[a]=Math.random();
			this.promedio+=this.num_array[a];
		}
		this.promedio/=1000000;

		//Dispersion
		for(int a=0;a<1000000;a++){
			this.dispersion+=Math.pow((this.num_array[a]-this.promedio), 2);
		}
		this.dispersion/=1000000;

		//Calculo repeticiones, intervalos...
		Arrays.sort(num_array);
		for(int a=0;a<1000000;a++)
			repeticiones[(int)(num_array[a]*10)]++;
		//
		for(int a=0;a<10;a++)
			this.dispersion_histo+=Math.pow((this.repeticiones[a]-this.promedio_histo), 2);
		
		this.dispersion_histo/=10;
	}

	public String toString(){
		String strSalida;
		strSalida="\\item Promedio $ \\longrightarrow  \\bar X = " + this.promedio + " $ \n \\item Dispersión \\longrightarrow $ \\sigma^2 = " + this.dispersion + " $ \nHistograma:\n";
		for(int a=0;a<10;a++){
			strSalida+="\\item Intervalo $ \\left( " + (a)/10.0 + " ; " + (a+1)/10.0 + " \\right)= ";
			strSalida+=String.valueOf(repeticiones[a]) + " $\n";
		}
		strSalida+= "\\item Frecuencia Promedio $ \\longrightarrow \\bar f = 100000 $\n";
		strSalida+="\\item Dispersión del Histograma $ \\longrightarrow \\sigma^2_{freq. hist.} = " + this.dispersion_histo + "\n";
		return strSalida;
	}

	public int[] getRepeticiones() {
		return repeticiones;
	}

	public double getPromedio() {
		return promedio;
	}

	public double getDispersion() {
		return dispersion;
	}

}
