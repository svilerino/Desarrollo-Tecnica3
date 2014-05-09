/**
 *
 */
package Modelo;

/**
 * @author Silvio
 *
 */
public class Caos {
	private double semilla;
	private double semilla_inicial;
	private int k;

	public Caos(double S_inicial){
		this.semilla=S_inicial;
		this.semilla_inicial=this.semilla;
		//k=2k+1;
		k=2555;
	}

	public double getRandom(){
		this.semilla=(double) ((k*this.semilla) - (int)(k*this.semilla));
		return this.semilla;
	}

	public void setSemilla(double semi){
		this.semilla=semi;
	}

	public void restartSemilla(){
		this.semilla=this.semilla_inicial;
	}
}
