package vista;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JPanel;

import modelo.Automata;
import modelo.CelulaType;

public class Grafico extends JPanel {

	/**
	 *
	 */
	private static final long serialVersionUID = 9080267411672777558L;
	private CelulaType[][] mat;

	public Grafico(CelulaType[][] mat) {
		super();
		setSize(Automata.DEFAULT_WIDTH, Automata.DEFAULT_HEIGHT);
		this.mat = mat;
	}

	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		for (int a = 0; a < mat.length; a++) {
			for (int b = 0; b < mat[0].length; b++) {
				if (mat[a][b] == CelulaType.HORMIGA) {
					g.setColor(Color.RED);
				} else if (mat[a][b] == CelulaType.PLANTA) {
					g.setColor(Color.GREEN);
				} else if (mat[a][b] == CelulaType.TIERRA) {
					g.setColor(new Color(139, 69, 19));
				}
				g.fillRect(b * Automata.DEFAULT_WIDTH / mat.length, a
						* Automata.DEFAULT_HEIGHT / mat[0].length,
						Automata.DEFAULT_WIDTH / mat.length,
						Automata.DEFAULT_HEIGHT / mat[0].length);
			}
		}
	}

	public CelulaType[][] getMat() {
		return mat;
	}

	public void setMat(CelulaType[][] mat) {
		this.mat = mat;
	}
}
