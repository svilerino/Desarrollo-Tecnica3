/**
 *
 */
package Modelo;

/**
 * @author Silvio
 *
 */
public class Congruencial {
	private double semillaA=0.0D;
	private double semillaB=0.0D;
	private double semillaG=0.0D;


	//A=NumPrimo.getPrimo(1800,1840000);
	//B=NumPrimo.getPrimo(2700,1960000);


	private int AA=1865471;
	private int BA=1999993;

	private int AB=1865533;
	private int BB=1999275;

	private int AG=1865893;
	private int BG=1999817;

	public Congruencial(double semilla_inicialA, double semilla_inicialB, double semilla_inicialG){
		System.gc();
		this.semillaA = semilla_inicialA;
		this.semillaB = semilla_inicialB;
		this.semillaG = semilla_inicialG;

		//AG=NumPrimo.getPrimo(1790,1840612);
		//BG=NumPrimo.getPrimo(2723,1960193);


		/*System.out.println("GNA Alfa\nPrimo A: " + AA);
		System.out.println("Primo B: " + BA);

		System.out.println("GNA Beta\nPrimo A: " + AB);
		System.out.println("Primo B: " + BB);

		System.out.println("GNA Gamma\nPrimo A: " + AG);
		System.out.println("Primo B: " + BG);*/

	}

	public double getRandom(){
		double result=0.0D;
		//return this.getAlfa()/1000000;
		//return this.getBeta()/1000000;
		//return this.getGamma()/1000000;

		result=(this.getAlfa()/1000000 + this.getBeta()/1000000 + this.getGamma()/1000000  );
		result=(double) result- ((int)result);

		//result=(this.getAlfa()/1000000 + this.getBeta()/1000000 + this.getGamma()/1000000  )/3;

		return result;
	}

	private double getAlfa(){
		semillaA=(double)((AA*semillaA+BA)%(1000000));
		return semillaA;
	}

	private double getBeta(){
		semillaB=(double)((AB*semillaB+BB)%(1000000));
		return semillaB;
	}

	private double getGamma(){
		semillaG=(double)((AG*semillaG+BG)%(1000000));
		return semillaG;
	}

}
