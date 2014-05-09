import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;

import javax.swing.JPanel;


public class MiPanel extends JPanel {
	AnalisisAnaliticoArray var=new AnalisisAnaliticoArray();

	public MiPanel() {
		super();
		this.setSize(1150,600);
		// TODO Auto-generated constructor stub
	}

	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		Graphics2D g2=(Graphics2D)g;
		Rectangle2D rect=null;
		//constantes de grafico
		final int margen_derecho=50;
		final int margen_superior=20;
		final int largo_recta=500;
		final int margen_inferior=500;
		int repeticiones[]=var.getRepeticiones();

		//Imprime valores analíticos y titulos:
		g2.drawString("Promedio: " + String.valueOf(var.getPromedio() + "   |   Dispersión: " + var.getDispersion()), margen_derecho, margen_inferior+50);
		g2.drawString("Histograma", 270, 10);
		g2.drawString("Test Gráfico", 850, 15);
		System.out.println("Valores analiticos: \n" + var);

		//Ejes y valores
		g2.setColor(new Color(0,0,0));
		g2.drawLine(margen_derecho, margen_superior, margen_derecho, margen_inferior);
		g2.drawLine(margen_derecho, margen_inferior, largo_recta+50, margen_inferior);

		for(int a=0;a<=10;a++)
			g2.drawString(String.valueOf(a/(double)10), (50*a)+margen_derecho, margen_inferior+10);

		for(int a=9;a>=0;a--)
			g2.drawString(String.valueOf(100000-a*10000), margen_derecho-50, (50*a)+margen_superior);


		//Histograma
		for(int a=0;a<10;a++){
			int var_x=0;
			int var_y=0;
			g2.setColor(new Color(64,64,128));
			rect=new Rectangle2D.Double();
			var_x=(50*a)+margen_derecho;
			var_y=margen_inferior+margen_superior-(int)((repeticiones[a]/(double)100000)*500);
			rect.setFrame(var_x, var_y,50, (int)((repeticiones[a]/(double)100000)*500)-margen_superior);
			g2.fill(rect);
			g2.setColor(new Color(0,0,0));
			g2.draw(rect);
			g2.drawString(String.valueOf(repeticiones[a]),var_x,var_y);
		}
		//Limite E/10
		g2.setColor(new Color(255,128,24));
		g2.fillRect(0, margen_superior, largo_recta+50, 1);
		g2.setColor(new Color(0,0,0));
		
		//Puntos al azar, test grafico
		g2.drawRect(600, 20, 500, 500);
		for(int a=0;a<100000;a++){
				int x=0;
				int y=0;
				x=(int)((Math.random()*500)+600);
				y=(int)((Math.random()*500)+20);
				g2.drawLine(x,y,x,y);
		}





	}

}
