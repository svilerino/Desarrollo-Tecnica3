import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JPanel;


public class grafico extends JPanel {
	
	public grafico(){
		super();
		this.setBounds(0, 0, 300, 300);
		this.setBackground(Color.WHITE);
	}
	
	public void paintComponent(Graphics g){
		super.paintComponent(g);
		g.drawLine(10, 150, 290, 150);
		for(int a=10;a<290;a+=6){
			g.drawLine(a, 145, a, 155);
		}
	}
	
}
