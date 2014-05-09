/**
 *
 */
package model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;

/**
 * @author Silvio
 *
 */
public class GeneticModel {

	private long time_inicial;
	private long time_vida;

	private ArrayList<Especimen>poblacion;
	private long N;//cantidad bichos
	private long F;//sumatoria de valores de poblacion
	private int mutationExponent;

	private long mutationsOcurred;

	private ArrayList<String> InitialPoblation;
	private ArrayList<String> FinalPoblation;
	private ArrayList<String> MidPoblation;
	private ArrayList<String> ProgramLog;
	private ArrayList<String> histogramArray;
	private int[] initialHistogram;
	private int[] midHistogram;
	private int[] finalHistogram;
	private static final int histogramsSize=256;

	/**
	 *
	 * @param N cantidad de especimenes en la poblacion
	 */
	public GeneticModel(int N, int minutos_vida , int mutationExponent) {
		this.mutationExponent=mutationExponent;
		this.time_inicial=System.currentTimeMillis();
		this.time_vida=(long)(minutos_vida*60000);

		this.poblacion=new ArrayList<Especimen>();
		this.InitialPoblation=new ArrayList<String>();
		this.MidPoblation=new ArrayList<String>();
		this.FinalPoblation=new ArrayList<String>();
		this.ProgramLog=new ArrayList<String>();
		this.histogramArray=new ArrayList<String>();

		this.initialHistogram=new int[histogramsSize];
		this.midHistogram=new int[histogramsSize];
		this.finalHistogram=new int[histogramsSize];

		this.N=N;

		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Program Started.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Program Started.");

		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Simulation Started.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Simulation Started.");

		this.generarEspecimenes();

		//InitialPoblation.add("Especie");
		Collections.sort(this.poblacion, Collections.reverseOrder());
		for(int a=0;a<this.N;a++){
			InitialPoblation.add("" + this.poblacion.get(a).getValor());
		}
		saveInitial();


		boolean midRegistered=false;
		while(this.checkTime()){
				this.lifeLoop();
				if( (this.partialTime()) && (!midRegistered) ){
					for(int a=0;a<this.poblacion.size();a++){
						for(int b=0;b<this.poblacion.get(a).getSurvivalRate();b++){
							MidPoblation.add("" + this.poblacion.get(a).getValor());
						}
					}
					Collections.sort(this.MidPoblation);
					saveMid();
					midRegistered=true;
				}
		}
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Simulation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Simulation Ended.");

		//FinalPoblation.add("Especie");
		for(int a=0;a<this.poblacion.size();a++){
			for(int b=0;b<this.poblacion.get(a).getSurvivalRate();b++){
				FinalPoblation.add("" + this.poblacion.get(a).getValor());
			}
		}
		saveFinal();

		createInitialHistogram();
		createMidHistogram();
		createFinalHistogram();
		this.histogramArray.add(Arrays.toString(this.initialHistogram));
		this.histogramArray.add(Arrays.toString(this.midHistogram));
		this.histogramArray.add(Arrays.toString(this.finalHistogram));
		FileUtil.writeText("C:\\histograms", this.histogramArray);
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Histograms File Creation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Histograms File Creation Ended.");

		saveLog();
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Program Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Program Ended.");
	}


	private void createInitialHistogram(){
		for(int a=0;a<this.InitialPoblation.size();a++){
			this.initialHistogram[Integer.parseInt(this.InitialPoblation.get(a))]++;
		}
	}

	private void createMidHistogram(){
		for(int a=0;a<this.MidPoblation.size();a++){
			this.midHistogram[Integer.parseInt(this.MidPoblation.get(a))]++;
		}
	}

	private void createFinalHistogram(){
		for(int a=0;a<this.InitialPoblation.size();a++){
			this.finalHistogram[Integer.parseInt(this.FinalPoblation.get(a))]++;
		}
	}

	private void saveLog(){
		FileUtil.writeText("C:\\logFile", this.ProgramLog);
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Log File Creation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Log File Creation Ended.");
	}

	private void saveInitial(){
		Collections.sort(this.InitialPoblation);
		FileUtil.writeText("C:\\InitialPoblation", this.InitialPoblation);
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  InitialPoblation File Creation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  InitialPoblation File Creation Ended.");
	}

	private void saveMid(){
		Collections.sort(this.FinalPoblation);
		FileUtil.writeText("C:\\MidPoblation", this.MidPoblation);
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  MidPoblation File Creation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  MidPoblation File Creation Ended.");
	}

	private void saveFinal(){
		Collections.sort(this.FinalPoblation);
		//FinalPoblation.add("Final Total Poblation: " + String.valueOf(this.getTotalPoblation()));
		//FinalPoblation.add("Mutation Count: " + this.mutationsOcurred);
		this.ProgramLog.add("Final Total Poblation: " + String.valueOf(this.getTotalPoblation()));
		this.ProgramLog.add("Mutation Count: " + this.mutationsOcurred);
		FileUtil.writeText("C:\\FinalPoblation", this.FinalPoblation);
		System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  FinalPoblation File Creation Ended.");
		this.ProgramLog.add("[ " + Calendar.getInstance().getTime().toString() + " ]  -  FinalPoblation File Creation Ended.");
	}

	private boolean checkTime(){
		return(System.currentTimeMillis()<this.time_inicial+this.time_vida);
	}

	private boolean partialTime(){
		return(System.currentTimeMillis()>this.time_inicial+(this.time_vida/2));
	}

	private void lifeLoop(){
		this.adaptarEspecimenes();
		this.cruzarEspecimenes();
		if(mutateRound()){
			this.poblacion.get((int) (Math.random()*this.poblacion.size())).mutateDNA((int) (Math.random()*8));
			mutationsOcurred++;
		}
	}

	private boolean mutateRound(){
		if(Math.random()<(1/Math.pow(10, mutationExponent))){
			System.out.println("[ " + Calendar.getInstance().getTime().toString() + " ]  -  Mutation Ocurred.");
			return true;
		}
		return false;
	}

	private void generarEspecimenes(){
		for(int a=0;a<this.N;a++){
			this.poblacion.add(new Especimen((int) (Math.random()*Math.pow(2, Especimen.bitsAllowed))));
			this.F+=this.poblacion.get(a).getValor();
		}
	}

	private int recalculateF(){
		int F=0;
		for(int a=0;a<this.poblacion.size();a++){
			F+=this.poblacion.get(a).getValor();
		}
		return F;
	}

	private void adaptarEspecimenes(){
		int calculatedSurvivalRate=0;
		this.F=this.recalculateF();
		for(int a=0;a<this.poblacion.size();a++){
			double newVal=this.poblacion.get(a).getValor();
			newVal=newVal/(double)this.F;
			newVal*=this.N;
			this.poblacion.get(a).setSurvivalRate((int) Math.round(newVal));
			calculatedSurvivalRate+=this.poblacion.get(a).getSurvivalRate();
		}
		deleteDeadFromPoblation();
		fixCalculatedSurvivalRate(calculatedSurvivalRate);
		calculatedSurvivalRate=reCalculateSurvivalRate();
	}

	private void deleteDeadFromPoblation(){
		for(int a=0;a<this.poblacion.size();a++){
			if(this.poblacion.get(a).getSurvivalRate()==0){
				this.poblacion.remove(a);
			}
		}
	}

	private int reCalculateSurvivalRate(){
		int calculatedSurvivalRate=0;
		for(int a=0;a<this.poblacion.size();a++){
			calculatedSurvivalRate+=this.poblacion.get(a).getSurvivalRate();
		}
		return calculatedSurvivalRate;
	}

	private long getTotalPoblation(){
		long n=0;
		for(Especimen s : this.poblacion) n+=s.getSurvivalRate();
		return n;
	}

	private void fixCalculatedSurvivalRate(int calculatedSurvivalRate){
		while(calculatedSurvivalRate<=N){
			int rndIndex=(int) (Math.random()*this.poblacion.size());
			this.poblacion.get(rndIndex).setSurvivalRate(this.poblacion.get(rndIndex).getSurvivalRate()+1);
			calculatedSurvivalRate=reCalculateSurvivalRate();
		}
		while(calculatedSurvivalRate>N){
			int rndIndex=(int) (Math.random()*this.poblacion.size());
			if(this.poblacion.get(rndIndex).getSurvivalRate()>0){
				this.poblacion.get(rndIndex).setSurvivalRate(this.poblacion.get(rndIndex).getSurvivalRate()-1);
				calculatedSurvivalRate=reCalculateSurvivalRate();
			}
		}

	}

	private void cruzarEspecimenes(){
		swapDNA(this.poblacion.get((int) (Math.random()*this.poblacion.size())), this.poblacion.get((int) (Math.random()*this.poblacion.size())));
		deleteDeadFromPoblation();
		int calculatedSurvivalRate=0;
		for(int a=0;a<this.poblacion.size();a++){
			calculatedSurvivalRate+=this.poblacion.get(a).getSurvivalRate();
		}
		fixCalculatedSurvivalRate(calculatedSurvivalRate);
	}

	private void swapDNA(Especimen espA, Especimen espB){
		int iniPos=(int) (Math.random()*(Especimen.bitsAllowed)+1);
		int len=(int) (Math.random()*(Especimen.bitsAllowed-iniPos));
		char aSubDNA[]=espA.getSubADNString(iniPos, len);
		char bSubDNA[]=espB.getSubADNString(iniPos, len);
		espB.replaceDNASubString(iniPos, len, aSubDNA);
		espA.replaceDNASubString(iniPos, len, bSubDNA);
	}


	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new GeneticModel(1000/*cantidad bichos*/, 5/*2hs*//*minutos*/,6 /*Mutation Exponent*/);

		//new GeneticModel(1000/*cantidad bichos*/, 5/*2hs*//*minutos*/,6 /*Mutation Exponent*/);
		//new GeneticModel(1000/*cantidad bichos*/, 5/*2hs*//*minutos*/,6 /*Mutation Exponent*/);
		//new GeneticModel(1000/*cantidad bichos*/, 5/*2hs*//*minutos*/,6 /*Mutation Exponent*/);
	}

}
