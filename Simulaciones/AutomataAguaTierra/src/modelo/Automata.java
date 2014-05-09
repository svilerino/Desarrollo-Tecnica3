package modelo;

import java.awt.geom.Point2D;

import javax.swing.JFrame;

import vista.Grafico;

public class Automata {

	public static final int DEFAULT_WIDTH=500;
	public static final int DEFAULT_HEIGHT=500;

	private int mat[][];
	private int filas;
	private int columnas;

	public static void main(String args[]){
		new Automata(100, 100);
		//new Automata(750, 750);
	}

	public Automata(int filas, int columnas){
		this.filas=filas;
		this.columnas=columnas;
		initAutomata();

		JFrame frm=new JFrame();
		frm.setBounds(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT);
		frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frm.setTitle("Tierra y Agua // Vileriño 2010");
		frm.setResizable(false);

		Grafico grf=new Grafico(mat);
		frm.add(grf);
		frm.setVisible(true);



		do{
			grf.setMat(mat);
			frm.repaint();
			nextCycle();
			/*try {
				Thread.sleep(1);
			} catch (InterruptedException e) {
				e.printStackTrace(System.err);
			}*/
		}while(true);
	}

	private void nextCycle() {
		int x=(int) (Math.random()*filas);
		int y=(int) (Math.random()*columnas);

		Point2D vecino=MatUtil.getRandomNeighbour(x, y, filas, columnas);

		if(mat[x][y]<=0){
			if( (mat[(int) vecino.getX()][(int) vecino.getY()]*(-1)) < 255 ){
				mat[(int) vecino.getX()][(int) vecino.getY()]--;
			}
		} else {
			if( mat[(int) vecino.getX()][(int) vecino.getY()] < 255 ){
				mat[(int) vecino.getX()][(int) vecino.getY()]++;
			}
		}
	}


	private void initAutomata(){
		mat=new int[filas][columnas];
		for(int a=0;a<mat.length;a++){
			for(int b=0;b<mat[0].length;b++){
				mat[a][b]=(int) Math.round(Math.random());
			}
		}
	}
}
