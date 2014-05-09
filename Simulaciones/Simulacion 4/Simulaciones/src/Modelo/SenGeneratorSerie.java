package Modelo;

/**
 *
 */

/**
 * @author Silvio
 * LOG Base 12
 */
public class SenGeneratorSerie {
	double Semilla;
	double Semilla_inicial;
	double base;
	SenGenerator sg;

	public SenGeneratorSerie(double semilla,double base, SenGenerator g1){
		this.Semilla_inicial=semilla;
		this.Semilla=semilla;
		this.base=base;
		this.sg=g1;
	}

	public double getRandom(){
		Semilla=Math.abs(Math.sin(Math.log(sg.getRandom())/(double)Math.log(base)));
		return Semilla;
	}

	public void restartSemillaInicial(){
		this.Semilla=this.Semilla_inicial;
	}
}
