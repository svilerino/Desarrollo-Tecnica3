import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.Color;
import java.text.NumberFormat;
import java.util.Arrays;

/*
 * Aclaraciones:
 * - Debido a que drawLine sólo permite coordenadas enteras, puede haber problemas con la escala en los gráficos,
 * 	 debido a los truncamientos.
 */

public class PanelGrafico extends JPanel{
	private RandomizedArray dataX;
	private RandomizedArray dataY;

	private int graphicVisible=0;

	/*
	 * Constantes del Histograma
	 */
	private final int H_X_AXIS=400;		//Longitud eje X
	private final int H_Y_AXIS=500;		//Longitud eje Y
	private final int H_X_O=75;			//Origen X
	private final int H_Y_O=550;		//Origen Y
	private final int H_N_X=10;			//Cantidad de Referencias en eje X
	private final int H_N_Y=20;			//Cantidad de Referencias en eje Y
	private final double MAX_X=1;		//Máxima referencia eje X - Inmodificable
	private final double MAX_Y=1000000;	//Máxima referencia eje Y

	/*
	 * Constantes del Plano de puntos
	 */
	private final int P_AXIS=450;		//Longitud ejes X e Y
	private final int P_X_O=600;		//Origen X
	private final int P_Y_O=550;		//Origen Y
	private final int P_N=10;			//Escala en ejes X e Y

	public PanelGrafico(RandomizedArray dataX, RandomizedArray dataY){
		super();
		this.dataX=dataX;
		this.dataY=dataY;
	}

	public void setGraphicVisible(int v){
		graphicVisible=v;
	}

	public void paintComponent(Graphics g){
		super.paintComponent(g);

		if(graphicVisible==0){								/*En paralelo*/
			dataX.setSeed(Long.parseLong("111111111111"));
			dataX.fillArray();
			//dataY.setSeed(Long.parseLong("121212121212"));
			dataY.fillArray();
		}else{												/*En serie*/
			dataX.fillArraySeries(dataY);
		}
		System.out.println("----------------------");
		System.out.println("Media: "+dataX.getAverage());
		System.out.println("Dispersion: "+dataX.getDispersion());
		System.out.println("Dispersion Frecuecias: "+dataX.getFreqDispersion());
		//System.out.println("Periodo: "+rX.getPeriod());
		System.out.println("\nFrecuencias:\n"+Arrays.toString(dataX.getFrequency()));

		double scale;
		NumberFormat f=NumberFormat.getNumberInstance();

		g.setColor(Color.WHITE);
		g.fillRect(0, 0, 1100, 650);

		g.setColor(Color.BLACK);
		/*
		 * Histograma
		 */

		//Ejes
		g.drawLine(H_X_O, H_Y_O, H_X_O, H_Y_O-H_Y_AXIS-20);
		g.drawLine(H_X_O, H_Y_O, H_X_O+H_X_AXIS+20, H_Y_O);

		g.drawString("0", H_X_O-9, H_Y_O+11);

		//Frecuencias
		int h;
		int[]freq=dataX.getFrequency();
		for(int i=0;i<H_N_X;i++){
			h=freq[i]*H_Y_AXIS/(int)MAX_Y;
			g.setColor(Color.LIGHT_GRAY);
			g.fillRect(i*H_X_AXIS/H_N_X+H_X_O, H_Y_O-h, H_X_AXIS/H_N_X, h);
			g.setColor(Color.BLACK);
			g.drawLine(i*H_X_AXIS/H_N_X+H_X_O, H_Y_O, i*H_X_AXIS/H_N_X+H_X_O, H_Y_O-h);
			g.drawLine((i+1)*H_X_AXIS/H_N_X+H_X_O, H_Y_O, (i+1)*H_X_AXIS/H_N_X+H_X_O, H_Y_O-h);
			g.drawLine(i*H_X_AXIS/H_N_X+H_X_O, H_Y_O-h, (i+1)*H_X_AXIS/H_N_X+H_X_O, H_Y_O-h);
		}

		//Escala eje Y
		scale=0;
		for(int y=H_Y_AXIS/H_N_Y; y<=H_Y_AXIS; y+=H_Y_AXIS/H_N_Y){
			scale+=MAX_Y/H_N_Y;
			g.drawLine(H_X_O-3, H_Y_O-y, H_X_O+3, H_Y_O-y);
			g.drawString(f.format(scale),H_X_O-60,H_Y_O-y+5);
		}

		//Escala eje X
		scale=0;
		f.setMaximumFractionDigits(2);
		f.setMinimumFractionDigits(1);
		for(int x=H_X_AXIS/H_N_X; x<=H_X_AXIS; x+=H_X_AXIS/H_N_X){
			scale+=MAX_X/H_N_X;
			g.drawLine(H_X_O + x, H_Y_O-3, H_X_O + x, H_Y_O + 3);
			g.drawString(f.format(scale), H_X_O+x-8, H_Y_O+20);
		}

		//Valor esperado
		h=dataX.getSize()/H_N_X*H_Y_AXIS/(int)MAX_Y;
		g.drawString("e = "+dataX.getSize()/H_N_X, H_X_O+H_X_AXIS+25, H_Y_O-h+5);
		g.setColor(Color.RED);
		g.drawLine(H_X_O, H_Y_O-h, H_X_O+H_X_AXIS+20, H_Y_O-h);

		/*
		 * Puntos en el plano
		 */

		g.setColor(Color.BLACK);
		//Ejes
		g.drawLine(P_X_O, P_Y_O, P_X_O+P_AXIS+20, P_Y_O);
		g.drawLine(P_X_O, P_Y_O, P_X_O, P_Y_O-P_AXIS-20);

		//Escala ejes X e Y
		scale=0;
		for(int z=P_AXIS/P_N; z<=P_AXIS; z+=P_AXIS/P_N){
			scale+=MAX_X/P_N;
			g.drawLine(P_X_O + z, P_Y_O-3, P_X_O + z, P_Y_O + 3);
			g.drawLine(P_X_O-3, P_Y_O-z, P_X_O+3, P_Y_O-z);
			g.drawString(f.format(scale), P_X_O+z-8, P_Y_O+20);
			g.drawString(f.format(scale),P_X_O-30,P_Y_O-z+5);
		}

		g.drawString("0", P_X_O-9, P_Y_O+11);

		int e=P_AXIS/(int)MAX_X;
		for(int i=0;i<dataX.getSize();i++){
			int x=P_X_O+(int)(dataX.getElement(i)*e);
			int y=P_Y_O-(int)(dataY.getElement(i)*e);
			g.drawLine(x, y, x, y);
		}
	}

	public void repaint(){
		Graphics g=getGraphics();
		if(g!=null)
			paintComponent(g);
	}
}