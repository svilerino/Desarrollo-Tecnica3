/**
 *
 */
package vista;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;

import javax.swing.JPanel;

/**
 * @author Silvio
 *
 */
public class pnlHistograma extends JPanel {

	private int num_intervalos;
	private double valores[];

	public pnlHistograma(int num_intervalos, double valores[]){
		super();
		this.num_intervalos=num_intervalos;
		this.valores=valores;
	}

	public void paintComponent(Graphics g){
		Graphics2D g2=(Graphics2D)g;
		Rectangle2D rect=null;
		final int margen_derecho=50;
		final int margen_superior=50;
		final int largo_recta=500;
		final int margen_inferior=550;
		final int ancho_barra=30;

		if((this.num_intervalos<1)||(valores==null)){
			System.out.println("Valores erroneos, setee valores correctos");
			return;
		}

		
		//Ejes y valores
		g2.setColor(new Color(0,0,0));
		g2.drawLine(margen_derecho, margen_superior, margen_derecho, margen_inferior);
		g2.drawLine(margen_derecho, margen_inferior, largo_recta+50, margen_inferior);
		for(int a=0;a<=20;a++)
			g2.drawString(String.valueOf(a/(double)10), (ancho_barra*a)+margen_derecho, margen_inferior+10);

		for(int a=10;a>=0;a--)
			g2.drawString(String.valueOf(1000000-a*100000), margen_derecho-50, (500*a/10)+margen_superior);
		
		//Histograma
		for(int a=0;a<this.num_intervalos;a++){
			int var_x=0;
			int var_y=0;
			g2.setColor(new Color(64,64,128));
			rect=new Rectangle2D.Double();
			var_x=(ancho_barra*a)+margen_derecho;
			var_y=margen_inferior+margen_superior-(int)((valores[a]/(double)1000000)*500);
			rect.setFrame(var_x, var_y,ancho_barra, (int)((valores[a]/(double)1000000)*500)-margen_superior);
			g2.fill(rect);
			g2.setColor(new Color(0,0,0));
			g2.draw(rect);
			//g2.drawString(String.valueOf(valores[a]),var_x,var_y);
			if(a==0) System.out.println(var_y);
		}
		
		
		//Limite E/10
		g2.setColor(new Color(255,128,24));
		g2.fillRect(0, margen_inferior+margen_superior, largo_recta+50, 1);
		g2.setColor(new Color(0,0,0));
	}

	/**
	 * @return the num_intervalos
	 */
	public int getNum_intervalos() {
		return num_intervalos;
	}

	/**
	 * @param num_intervalos the num_intervalos to set
	 */
	public void setNum_intervalos(int num_intervalos) {
		this.num_intervalos = num_intervalos;
	}

	/**
	 * @return the valores
	 */
	public double[] getValores() {
		return valores;
	}

	/**
	 * @param valores the valores to set
	 */
	public void setValores(double[] valores) {
		this.valores = valores;
	}
}
