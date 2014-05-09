package Modelo;

import java.util.Arrays;


public class AnalisisAnaliticoArray {
	Congruencial cngGNA=new Congruencial(Math.random(), Math.random(), Math.random());
	MiddleSquareGenerator VNgna=new MiddleSquareGenerator();
	SenGenerator senGNA=new SenGenerator(Math.random(),4);
	double num_array[];
	int repeticiones[];
	double promedio;
	double promedio_histo;
	double dispersion;
	double dispersion_histo;
	double generadoperiodo;
	int periodo;
	int cont;
	int modelo;

	public AnalisisAnaliticoArray(int modelo) {
		this.modelo=modelo;
		this.num_array=new double[1000000];
		this.repeticiones=new int[10];
		this.dispersion=0;
		this.dispersion_histo=0;
		this.promedio=0;
		this.promedio_histo=100000;

		//Promedio
		for(int a=0;a<1000000;a++){
			this.num_array[a]=this.getRandom();
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
		/*
		for(int a=0;a<1000000;a++){
			generadoperiodo=VNgna.getStringGeneration(1)[0];
		}
		cont=1;
		senGen2=new SenGenerator(generadoperiodo, (double)baselog);
		while((cont<1000000) && (senGen2.getRandom()!=generadoperiodo)){
		cont++;
		}
		if(cont<1000000){
			periodo=cont;
		}no busco periodo*/

	}

	public String toString(){
		String strSalida="";
		//if(this.periodo>0) strSalida+="\nPeriodo: " + this.periodo; no busco periodo
		strSalida+="\n\\item Promedio $ \\longrightarrow  \\bar X = " + this.promedio + " $ \n \\item Dispersión $ \\longrightarrow \\sigma^2 = " + this.dispersion + " $ \nHistograma:\n";
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

	public double getRandom(){

		double result=0;
		if(modelo==0){
			result=Math.random();
		}else if(modelo==1){
			result=senGNA.getRandom();
		}else if(modelo==2){
			result=VNgna.getNumericGeneration(1)[0];
		}else if(modelo==3){
			result=VNgna.getStringGeneration(1)[0];
		}else if(modelo==4){
			result=cngGNA.getRandom();
		}
		return result;
	}

	/**
	 * @return the modelo
	 */
	public int getModelo() {
		return modelo;
	}

	/**
	 * @param modelo the modelo to set
	 */
	public void setModelo(int modelo) {
		this.modelo = modelo;
	}

	/**
	 * @return the num_array
	 */
	public double[] getNum_array() {
		return num_array;
	}
}
