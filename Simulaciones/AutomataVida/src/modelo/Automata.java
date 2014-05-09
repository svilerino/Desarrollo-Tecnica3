package modelo;

import javax.swing.JFrame;

import vista.Grafico;

public class Automata {
	public static final int DEFAULT_HEIGHT = 1000;
	public static final int DEFAULT_WIDTH = 1000;

/*	Reglas muere/nace
 	/3(estable) casi todo es una chispa
	5678/35678 (caótico) diamantes, catástrofes
	1357/1357 (crece) todo son replicantes
	1358/357 (caótico) un reino equilibrado de amebas
	23/3 (caótico) "Juego de la Vida de Conway"
	23/36 (caótico) "HighLife" (tiene replicante)
	235678/3678 (estable) mancha de tinta que se seca rápidamente
	245/368 (estable) muerte, locomotoras y naves
	34/34 (crece) "Vida 34"
	51/346 (estable) "Larga vida" casi todo son osciladores
 */

	private static final int muere[]={2, 3};
	private static final int nace[]={3};
	private static final long DELAY = 75;
	private static final int LATTICE_X=250;
	private static final int LATTICE_Y=250;


	private int filas;
	private int columnas;
	private int mat[][];
	private int matFutura[][];

	public Automata(int filas, int columnas){
		this.filas = filas;
		this.columnas = columnas;
		this.mat = MatUtil.getFilledMat(this.filas, this.columnas, 0, 1);
		this.matFutura = new int[this.filas][this.columnas];

		JFrame frm=new JFrame();
		frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frm.setTitle("Juego de la vida // Vilerino 2010");
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
			mat=MatUtil.copyMatByVal(matFutura);
			try {
				Thread.sleep(DELAY);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}while(true);
	}

	private void changeElement(int x, int y){

		if(mat[x][y]==0){
			if(isInBirthList(nace, x, y)){
				matFutura[x][y]=1;
			}
		}else if(mat[x][y]==1){
			//muere
			if(isInDeathList(muere, x, y)){
				matFutura[x][y]=0;
			}
		}
	}

	private boolean isInBirthList(int nace[], int x, int y){
		int aliveCells=MatUtil.getAliveCells(mat, x, y, filas, columnas);
		for(int a : nace){
			if(a==aliveCells) return true;
		}
		return false;
	}

	private boolean isInDeathList(int muere[], int x, int y){
		int aliveCells=MatUtil.getAliveCells(mat, x, y, filas, columnas);
		for(int a : muere){
			if(a==aliveCells) return false;
		}
		return true;
	}

	public static void main(String args[]){
		new Automata(LATTICE_X, LATTICE_Y);
	}
}
