package Modelo;


public class AnalisisAnaliticoArray {
	private Caos caosGNA=new Caos(Math.random());
	private Congruencial cngGNA=new Congruencial(Math.random(), Math.random(), Math.random());
	private MiddleSquareGenerator VNgna=new MiddleSquareGenerator();
	private SenGenerator senGNA=new SenGenerator(Math.random(),4);
	private double num_array[];
	private int repeticiones[];
	private double promedio;
	private double promedio_histo;
	private double dispersion;
	private double dispersion_histo;
	private double generadoperiodo;
	private int periodo;
	private int cont;
	private int modelo;
	private boolean bsc_periodo;

	public AnalisisAnaliticoArray(int modelo, boolean buscar_periodo) {
		this.bsc_periodo=buscar_periodo;
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

		//Dispersion e intervalos
		for(int a=0;a<1000000;a++){
			this.dispersion+=Math.pow((this.num_array[a]-this.promedio), 2);
			repeticiones[(int)(num_array[a]*10)]++;
		}
		this.dispersion/=1000000;

		//Calculo repeticiones, intervalos...
		//Arrays.sort(num_array);
		//for(int a=0;a<1000000;a++)
			//	repeticiones[(int)(num_array[a]*10)]++;

		//
		for(int a=0;a<10;a++)
			this.dispersion_histo+=Math.pow((this.repeticiones[a]-this.promedio_histo), 2);

		this.dispersion_histo/=10;


		//Periodo
		if(bsc_periodo){
			System.out.println("Busqueda de periodo habilitada.");
			for(int a=0;a<1000000;a++){
				generadoperiodo=this.getRandom();
			}
			cont=1;

			generadoperiodo=this.cutNumber(generadoperiodo, 6);

			System.out.println("Semilla de salida cutteada: " + generadoperiodo);

			if(modelo==1){
				senGNA.setSemilla(generadoperiodo);
			}else if(modelo==5){
				caosGNA.setSemilla(generadoperiodo);
			}

			while((cont<10000000) && (this.cutNumber(this.getRandom(), 6)!=generadoperiodo)){
				cont++;
			}
			System.out.println("Periodo Encontrado: " + cont);
			if(cont<10000000){
				periodo=cont;
			}
		}
	}

	public String toString(){
		String strSalida="";
		strSalida+="\nPeriodo: " + this.periodo;
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
		}else if(modelo==5){
			result=caosGNA.getRandom();
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

	private double cutNumber(double in,int decimales){
		return (((int)( in*Math.pow(10, decimales))) /Math.pow(10, decimales));
	}
}
