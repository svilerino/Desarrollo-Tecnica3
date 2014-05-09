/**
 *
 */
package Vista;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.StringTokenizer;

import javax.imageio.ImageIO;
import javax.swing.JPanel;

import Modelo.AnalisisAnaliticoArray;

/**
 * @author Silvio
 *
 */
public class pnlGrafico extends JPanel {
	private int simulacion;
	private AnalisisAnaliticoArray var;

	public pnlGrafico(AnalisisAnaliticoArray var){
		super();
		this.var=var;
	}

	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		Graphics2D g2=(Graphics2D)g;
		Rectangle2D rect=null;

		this.setBackground(Color.WHITE);
		//constantes de grafico
		final int margen_derecho=50;
		final int margen_superior=20;
		final int largo_recta=500;
		final int margen_inferior=500;
		int repeticiones[]=var.getRepeticiones();

		if(simulacion==0){

			//Ejes y valores
			g2.setColor(new Color(0,0,0));
			g2.drawLine(margen_derecho, margen_superior, margen_derecho, margen_inferior);
			g2.drawLine(margen_derecho, margen_inferior, largo_recta+50, margen_inferior);

			for(int a=0;a<=10;a++)
				g2.drawString(String.valueOf(a/(double)10), (50*a)+margen_derecho, margen_inferior+10);

			for(int a=9;a>=0;a--)
				g2.drawString(String.valueOf(1000000-a*100000), margen_derecho-50, (50*a)+margen_superior);


			//Histograma
			for(int a=0;a<10;a++){
				int var_x=0;
				int var_y=0;
				g2.setColor(new Color(64,64,128));
				rect=new Rectangle2D.Double();
				var_x=(50*a)+margen_derecho;
				var_y=margen_inferior+margen_superior-(int)((repeticiones[a]/(double)1000000)*500);
				rect.setFrame(var_x, var_y,50, (int)((repeticiones[a]/(double)1000000)*500)-margen_superior);
				g2.fill(rect);
				g2.setColor(new Color(0,0,0));
				g2.draw(rect);
				g2.drawString(String.valueOf(repeticiones[a]),var_x,var_y);
			}
			//Limite E/10
			g2.setColor(new Color(255,128,24));
			g2.fillRect(0, (50*9)+margen_superior, largo_recta+50, 1);
			g2.setColor(new Color(0,0,0));
		}
		if(simulacion==1){
			//Puntos al azar, test grafico Paralelo
			g2.drawRect(50, 20, 500, 500);
			int x=0;
			int y=0;

			for(int a=0;a<250000;a++){
				x=(int)(var.getRandom()*500) +50;
				y=(int)(var.getRandom()*500) +20;
				g2.drawLine(x, y, x, y);
			}
		}if(simulacion==2){
			//Puntos al azar, test grafico Serie
			g2.drawRect(50, 20, 500, 500);
			int x=0;
			int y=0;
			double aux_vec[]=new double[500000];
			for(int z=0;z<500000;z++){
				aux_vec[z]=var.getRandom();
			}

			for(int a=1;a<250000;a++){
				x=(int)(aux_vec[2*a]*500) +50;
				y=(int)(aux_vec[2*a-1]*500) +20;
				g2.drawLine(x, y, x, y);
			}
		}
	}

	/**
	 * @param simulacion the simulacion to set
	 */
	public void setSimulacion(int simulacion) {
		this.simulacion = simulacion;
	}

	public void saveSnaps(JPanel panel ){
		Calendar calendario=new GregorianCalendar();
		int hora =calendario.get(Calendar.HOUR_OF_DAY);
		int minutos = calendario.get(Calendar.MINUTE);
		int segundos = calendario.get(Calendar.SECOND);
		int dia = calendario.get(Calendar.DAY_OF_MONTH);
		int mes = calendario.get(Calendar.MONTH)+1;
		int anio = calendario.get(Calendar.YEAR);
		String grafico="";
		String nombrearchivo="";
		if(simulacion==0){
			grafico="Histograma";
		}
		if(simulacion==1){
			grafico="Grafico_Paralelo";
		}
		if(simulacion==2){
			grafico="Grafico_Serie";
		}
		BufferedImage bufImage = new BufferedImage(panel.getSize().width, panel.getSize().height,BufferedImage.TYPE_INT_RGB);
		panel.paint(bufImage.createGraphics());
		nombrearchivo="C:\\Simulaciones";//\\Simulacion_" + dia + "_" + mes + "_" + anio + "_" + hora + "_" + minutos + "_" + segundos;
		File carpeta = new File(nombrearchivo);
		if(!carpeta.isDirectory()){
			carpeta.mkdir();
		}
		File imageFile = new File("C:\\Simulaciones\\Simulacion_" + dia + "_" + mes + "_" + anio + "_" + hora + "_" + minutos + "_" + segundos + "_grafico_" + grafico + ".jpg");
		System.out.println("Grafico " + simulacion + " Guardado en C:\\Simulaciones\\Simulacion_" + dia + "_" + mes + "_" + anio + "_" + hora + "_" + minutos + "_" + segundos + "_grafico_" + grafico + ".jpg");
	    try{
	        imageFile.createNewFile();
	        ImageIO.write(bufImage, "jpeg", imageFile);
	    }catch(Exception ex){
	    	ex.printStackTrace();
	    }
	}

	public void saveResultsToFile(){
		StringTokenizer st;
		st=new StringTokenizer(var.toString(),"\n");
		Calendar calendario=new GregorianCalendar();
		int hora =calendario.get(Calendar.HOUR_OF_DAY);
		int minutos = calendario.get(Calendar.MINUTE);
		int segundos = calendario.get(Calendar.SECOND);
		int dia = calendario.get(Calendar.DAY_OF_MONTH);
		int mes = calendario.get(Calendar.MONTH)+1;
		int anio = calendario.get(Calendar.YEAR);

		try{
			File carpeta = new File("C:\\Simulaciones\\");
			if(!carpeta.isDirectory()){
				carpeta.mkdir();
			}
			File archivo = new File("C:\\Simulaciones\\Simulacion_" + dia + "_" + mes + "_" + anio + "_" + hora + "_" + minutos + "_" + segundos + "_Analiticos.txt");

			BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(archivo)));
			while(st.hasMoreTokens()){
				bw.write(st.nextToken() + "\n");
			}
			bw.flush();
			bw.close();
			System.out.println("Analiticos guardados en C:\\Simulaciones\\Simulacion_" + dia + "_" + mes + "_" + anio + "_" + hora + "_" + minutos + "_" + segundos + "_Analiticos.txt");
		}catch(IOException e){
			e.printStackTrace();
		}
	}

	/**
	 * @return the var
	 */
	public AnalisisAnaliticoArray getVar() {
		return var;
	}

	/**
	 * @param var the var to set
	 */
	public void setVar(AnalisisAnaliticoArray var) {
		this.var = var;
	}

}
