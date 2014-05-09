package Modelo;

/**
 *
 */

/**
 * @author Silvio
 * LOG Base 12
 */
public class SenGenerator {
	double Semilla;
	double Semilla_inicial;
	double base;

	public SenGenerator(double semilla,double base){
		this.Semilla_inicial=semilla;
		this.Semilla=semilla;
		this.base=base;
	}

	public double getRandom(){
		Semilla=Math.abs(Math.sin(Math.log(Semilla)/(double)Math.log(base)));
		return Semilla;
	}

	public void restartSemillaInicial(){
		this.Semilla=this.Semilla_inicial;
	}
}
