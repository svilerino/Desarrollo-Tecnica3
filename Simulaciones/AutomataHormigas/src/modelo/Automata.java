package modelo;

import java.awt.geom.Point2D;

import javax.swing.JFrame;
import vista.Grafico;

public class Automata {

	public static final int DEFAULT_WIDTH=400;
	public static final int DEFAULT_HEIGHT=400;
	public static final long delay=0;

	private CelulaType [][] automataCelular;
	private int filas;
	private int columnas;
	private JFrame frm;
	private Grafico grf;


	public static void main(String args[]){
		new Automata(100, 100);
	}

	public Automata(int filas, int columnas){
		this.columnas=columnas;
		this.filas=filas;
		initAutomata();

		JFrame frm=new JFrame();
		frm.setBounds(10, 10, DEFAULT_WIDTH, DEFAULT_HEIGHT);
		frm.setResizable(false);
		frm.setTitle("Automata Celular : Hormigas - Tierra - Plantas //Vilerino 2010");
		frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		grf=new Grafico(automataCelular);
		frm.setContentPane(grf);
		frm.setVisible(true);
		this.frm=frm;

		do{
			grf.setMat(automataCelular);
			frm.repaint();
			nextCycle();//ciclo de automata(ifs)
			try {
				Thread.sleep(delay);
			} catch (InterruptedException e) {
				e.printStackTrace(System.err);
			}
		}while(true);
	}

	private void initAutomata(){
		automataCelular=new CelulaType[filas][columnas];
		for(int a=0;a<filas;a++){
			for(int b=0;b<columnas;b++){
				automataCelular[a][b]=CelulaType.values()[(int) (Math.random()*CelulaType.values().length)];
			}
		}
	}

	public void nextCycle(){
		int x=(int) (Math.random()*automataCelular.length);
		int y=(int) (Math.random()*automataCelular[0].length);
		Point2D ptr=MatUtil.getRandomNeighbour(x, y,filas, columnas);
		CelulaType vecino=automataCelular[(int) ptr.getX()][(int) ptr.getY()];

		if(automataCelular[x][y]==CelulaType.TIERRA){// si x,y es tierra
			if(vecino==CelulaType.TIERRA){
				//no hace nada
			}else if(vecino==CelulaType.PLANTA){
				//crece planta sobre la tierra
				vecino=CelulaType.PLANTA;
			}else if(vecino==CelulaType.HORMIGA){
				//mata hormiga
				vecino=CelulaType.TIERRA;
			}

		}else if(automataCelular[x][y]==CelulaType.HORMIGA){// si x,y es hormiga
			if(vecino==CelulaType.TIERRA){
				//nace hormiga
				vecino=CelulaType.HORMIGA;
			}else if(vecino==CelulaType.PLANTA){
				//come planta y queda tierra
				vecino=CelulaType.TIERRA;
			}else if(vecino==CelulaType.HORMIGA){
				//no hace nada
			}
		}else if(automataCelular[x][y]==CelulaType.PLANTA){// si x,y es planta
			if(vecino==CelulaType.TIERRA){
				//crece planta
				vecino=CelulaType.PLANTA;
			}else if(vecino==CelulaType.PLANTA){
				//no hace nada
			}else if(vecino==CelulaType.HORMIGA){
				//no hace nada
			}
		}
		automataCelular[(int) ptr.getX()][(int) ptr.getY()]=vecino;
	}
}
