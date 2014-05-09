package model;

import java.util.Arrays;

public class Especimen implements Comparable<Especimen> {

	private int valor;
	private char[] binario;
	private int survivalRate;
	public static final int bitsAllowed=8; //Cantidad de bits generica

	public Especimen(int valor) {
		if(valor>=Math.pow(2, Especimen.bitsAllowed)){
			System.out.println("Numero muy grande!");
		}else{
			this.valor = valor;
			this.convertBinary();
		}
	}

	private void convertBinary() {
		String bin = Integer.toBinaryString(this.valor);
		while (bin.length() < Especimen.bitsAllowed) {
			bin = "0" + bin;
		}
		this.binario = bin.toCharArray();
	}

	public char[] getSubADNString(int pos, int len){
		return String.valueOf(this.binario).substring(pos, pos+len).toCharArray();
	}

	public void replaceDNASubString(int pos, int len, char replacement[]){
		for(int a=pos;a<pos+len;a++){
			binario[a]=replacement[a-pos];
		}
		this.reCalculateValue();
	}

	public void mutateDNA(int bit){
		if(this.binario[bit]=='0'){
			this.binario[bit]='1';
		}else{
			this.binario[bit]='0';
		}
		this.reCalculateValue();
	}

	private void reCalculateValue(){
		this.valor=Integer.parseInt(String.valueOf(this.binario), 2);
	}

	public String toString() {
		return ("Value: " + this.valor + "\nBin" + Arrays.toString(this.binario));
	}

	/**
	 * @return the valor
	 */
	public int getValor() {
		return valor;
	}

	public String getTokenizedRepresentation(){
		return this.valor + ";" + this.survivalRate;
 	}

	/**
	 * @return the binario
	 */
	public char[] getBinario() {
		return binario;
	}


 	public int compareTo(Especimen o) {
		//TODO validar null y demas
		return this.valor-o.getValor();
	}

	/*public int compareTo(Especimen o) {
		//TODO validar null y demas
		return this.survivalRate-o.getSurvivalRate();
	}*/

	/**
	 * @return the survivalRate
	 */
	public int getSurvivalRate() {
		return survivalRate;
	}

	/**
	 * @param survivalRate the survivalRate to set
	 */
	public void setSurvivalRate(int survivalRate) {
		this.survivalRate = survivalRate;
	}
}
