package Modelo;


public class MiddleSquareGenerator {
	private final int N=6;		/*Cantidad de digitos a generar*/

	private Long long_seed;
	private String str_seed;

	public MiddleSquareGenerator(){
		long_seed=generateLongSeed();
		str_seed=Long.toString(long_seed);
		//System.out.println("SEED = "+long_seed);
	}

	public double[]	getStringGeneration(int size){
		double[] value=new double[size];
		double n;
		String seed=str_seed;

		//System.out.println("-------------------");
		for(int i=0;i<size;i++){
			seed=seed.substring(N/2,3*N/2);
			n=Long.parseLong(seed)/Math.pow(10, N);
			//System.out.print(n+" -> ");
			value[i]=n;

			seed=Long.toString((long)Math.pow((long)(n*Math.pow(10, N)),2));

			//System.out.print(seed+" -> ");
			while(seed.length()<2*N)
				seed+="9";

			//System.out.print(seed+"\n");
		}

		return value;
	}

	public double[] getNumericGeneration(int size){
		double[] value=new double[size];
		double n;
		Long seed=long_seed;
		//System.out.println("-------------------");

		for(int i=0;i<size;i++){
			seed/=(int)Math.pow(10,N/2);						/*Saco últimos 3 dígitos*/
			n=seed/Math.pow(10, N);								/*Dejo en la mantisa el número generado*/
			//System.out.print(n+" -> ");
			n-=(int)n;											/*Resto la parte entera*/
			//System.out.print(n+" -> ");
			n=((int)(n*Math.pow(10,N)))/Math.pow(10, N);		/*Saco decimales extra*/
			value[i]=n;

			//System.out.print(n+" -> ");

			seed=(long)Math.pow((long)(n*Math.pow(10, N)),2);

			//System.out.print(seed+" -> ");

			while(seed<Math.pow(10, 2*N-1))
				seed=seed*10+9;									/*Completo con 9*/

			//System.out.print(Long.toString(seed)+"\n");
		}
		return value;
	}

	public void setSeed(Long long_seed){
		this.long_seed=long_seed;
		this.str_seed=Long.toString(long_seed);

		//System.out.println(long_seed.toString()+"-.-.-.-");
	}

	private Long generateLongSeed(){
		return (long)(Math.random()*(9*Math.pow(10,2*N-1)))+(long)Math.pow(10,2*N-1);
	}

	/*
	public String generateStringSeed(){
		String res="";

		for(int i=0;i<N;i++)
			res+=Integer.toString((int)(Math.random()*10));

		return res;
	}
	*/
}
