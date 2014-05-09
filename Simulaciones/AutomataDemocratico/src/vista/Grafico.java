package vista;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JPanel;

import modelo.Automata;

public class Grafico extends JPanel {

	/**
	 *
	 */
	private static final long serialVersionUID = 9080267411672777558L;
	private int[][] mat;

	public Grafico(int[][] mat) {
		super();
		setSize(Automata.DEFAULT_WIDTH, Automata.DEFAULT_HEIGHT);
		this.mat = mat;
	}

	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		for (int a = 0; a < mat.length; a++) {
			for (int b = 0; b < mat[0].length; b++) {
				if (mat[a][b] == 0) {
					g.setColor(Color.BLUE);
				} else {
					g.setColor(Color.RED);
				}
				g.fillRect(b * Automata.DEFAULT_WIDTH / mat.length, a
						* Automata.DEFAULT_HEIGHT / mat[0].length,
						Automata.DEFAULT_WIDTH / mat.length,
						Automata.DEFAULT_HEIGHT / mat[0].length);
			}
		}
	}

	public int[][] getMat() {
		return mat;
	}

	public void setMat(int[][] mat) {
		this.mat = mat;
	}
}
