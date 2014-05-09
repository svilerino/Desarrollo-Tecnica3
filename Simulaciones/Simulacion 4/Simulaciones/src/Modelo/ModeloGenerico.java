package Modelo;

/**
 *
 */

/**
 * @author Silvio
 *
 */
public class ModeloGenerico {
	double resultado;
	int base_log;
	int modelo;

	public ModeloGenerico(double Semilla,int modelo){
		if(modelo==0){
			resultado=Math.random()*Semilla;
		}
		if(modelo==1){
			base_log=12;
			resultado=new SenGenerator(Semilla,base_log).getRandom();
		}
		if(modelo==2){
			resultado=190;
			//Von NewMann
		}

	}

	/**
	 * @return the random
	 */
	public double getRandom() {
		return resultado;
	}
}
