/**
 *
 */
package modelo;

import java.util.Arrays;

/**
 * @author Silvio
 *
 */
public class Voces {
	private int cantidad_gritos;
	private int cantidad_personas;
	private int cantidad_intervalos;
	private double muestras[];
	private double tonosdevoz[];

	private double promedio;
	private double dispersion;

	private double intervalos[];


	public Voces(int cant_gritos, int cant_persona_por_grito, int cant_intervalo){
		this.cantidad_gritos=cant_gritos;
		this.cantidad_personas=cant_persona_por_grito;
		this.muestras=this.getMuestreos();
		this.tonosdevoz=null;
		this.cantidad_intervalos=cant_intervalo;
		this.intervalos=new double[this.cantidad_intervalos];
	}

	private double[] getRandTonos(){
		double aux[]=new double[this.cantidad_personas];
		for(int a=0;a<this.cantidad_personas;a++){
			aux[a]=Math.random();
		}
		return aux;
	}

	private double[] getMuestreos(){
		double muestras[]=new double[this.cantidad_gritos];

		for(int a=0;a<this.cantidad_gritos;a++){
			tonosdevoz=this.getRandTonos();
			for(int b=0;b<this.cantidad_personas;b++){
				muestras[a]+=tonosdevoz[b];
			}
		}
		return muestras;
	}

	public String toString(){
		String strSalida="Cantidad de personas por grito: " + this.cantidad_personas;
		strSalida+="\nCantidad de Muestras: " + this.cantidad_gritos;
		strSalida+="\nPromedio: ";
		strSalida+=String.valueOf(this.getPromedio()) + "\n";
		strSalida+="Dispersion: ";
		strSalida+=String.valueOf(this.getDispersion()) + "\n";
		strSalida+="Intervalos: ";

		strSalida+=Arrays.toString(this.intervalos);

		/*for(int a=0;a<this.cantidad_intervalos;a++){
			//strSalida+="Intervalo " + String.valueOf(a+1) + ": ";
			strSalida+=String.valueOf(this.intervalos[a]);// + "\n";
			strSalida+=", ";
		}
		strSalida=strSalida.substring(0, strSalida.length()-2);
		strSalida+=" ]";*/
		return strSalida;
	}

	public double getPromedio(){
		this.promedio=0.0D;
		for(int a=0;a<this.cantidad_gritos;a++){
			this.intervalos[(int)this.muestras[a]]++;
			this.promedio+=this.muestras[a];
		}
		this.promedio/=this.cantidad_gritos;
		return this.promedio;
	}

	public double[] getHistograma(){
		this.getPromedio();
		return this.intervalos;
	}

	public double getDispersion(){
		this.dispersion=0.0D;
		for(int a=0;a<this.cantidad_gritos;a++){
			this.dispersion+=Math.pow((this.muestras[a]-this.promedio), 2);
		}
		this.dispersion/=this.cantidad_gritos;
		return this.dispersion;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Voces a=new Voces(1000000,20,20);
		System.out.println(a);
	}

	/**
	 * @return the cantidad_gritos
	 */
	public int getCantidad_gritos() {
		return cantidad_gritos;
	}

	/**
	 * @return the cantidad_personas
	 */
	public int getCantidad_personas() {
		return cantidad_personas;
	}

	/**
	 * @return the cantidad_intervalos
	 */
	public int getCantidad_intervalos() {
		return cantidad_intervalos;
	}

	/**
	 * @return the intervalos
	 */
	public double[] getIntervalos() {
		return intervalos;
	}

}
