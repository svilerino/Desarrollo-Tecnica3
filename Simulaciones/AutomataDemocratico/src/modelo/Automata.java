package modelo;

import javax.swing.JFrame;

import vista.Grafico;

public class Automata {
	public static final int DEFAULT_HEIGHT = 500;
	public static final int DEFAULT_WIDTH = 500;
	private static final long DELAY = 250;
	private int filas;
	private int columnas;
	private int mat[][];
	private int matFutura[][];

	public Automata(int filas, int columnas){
		this.filas=filas;
		this.columnas=columnas;
		this.mat=MatUtil.getFilledMat(this.filas, this.columnas, 0, 1);
		this.matFutura= new int[this.filas][this.columnas];

		JFrame frm=new JFrame();
		frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frm.setTitle("Modelo Democratico // Vilerino 2010");
		frm.setBounds(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT + 33);
		Grafico grf=new Grafico(this.mat);
		frm.setResizable(false);
		frm.add(grf);
		frm.setVisible(true);

		do{
			grf.setMat(this.mat);
			frm.repaint();
			for(int a=0;a<this.filas;a++){
				for(int b=0;b<this.columnas;b++){
					this.changeElement(a, b);
				}
			}
			mat=MatUtil.copyMat(matFutura);
			try {
				Thread.sleep(DELAY);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
		}while(true);
	}

	private void changeElement(int x, int y){
		this.matFutura[x][y]=MatUtil.getMostPopularBySum(mat, x, y, filas, columnas);
	}

	public static void main(String args[]){
		new Automata(100, 100);
	}
}
