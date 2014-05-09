/**
 *
 */
package Vista;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JPanel;

import Modelo.AnalisisAnaliticoArray;

/**
 * @author Silvio
 *
 */
public class MiFrame extends JFrame implements ActionListener{
	private static final int VTN_X=1000;
	private static final int VTN_Y=680;
	private static final int POS_X=0;
	private static final int POS_Y=10;

	private static final int GRA_X=600;
	private static final int GRA_Y=620;
	private static final int PSGRA_X=370;
	private static final int PSGRA_Y=20;

	private static final int CNT_X=320;
	private static final int CNT_Y=680;
	private static final int PSCNT_X=0;
	private static final int PSCNT_Y=0;

	//Paneles
	private JPanel pnl_principal;
	private pnlGrafico pnl_graficos;
	private JPanel pnl_controles;

	//Controles
	private JButton jbtn_graficar;
	private JButton jbtn_getFiles;
	private JButton jbtn_getImages;
	private JComboBox jcmb_Modelo;
	private JComboBox jcmb_Grafico;
	private String modelos[]={"Java", "Trigonometrico", "CenteredSquare - Numeric", "CenteredSquare - String", "Congruencial"};
	private String graficos[]={"Histograma","Paralelo","Serie"};


	public static void main(String args[]){
		System.gc();
		MiFrame frmMain=new MiFrame();
	}

	public MiFrame(){
		super();
		System.gc();
		this.setBounds(POS_X, POS_Y, VTN_X, VTN_Y);
		this.setTitle("Simulaciones");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setLayout(null);
		this.setResizable(false);

		//Panel principal config
		pnl_principal=new JPanel();
		pnl_principal.setBounds(POS_X, POS_Y-20, VTN_X, VTN_Y-20);
		pnl_principal.setLayout(null);
		//Panel graficos
		pnl_graficos=new pnlGrafico(new AnalisisAnaliticoArray(0));
		pnl_graficos.setLayout(null);
		pnl_graficos.setSimulacion(0);
		pnl_graficos.setBounds(PSGRA_X, PSGRA_Y, GRA_X, GRA_Y);
		pnl_graficos.setVisible(false);



		//Controles
		jbtn_graficar=new JButton("Graficar!");
		jbtn_graficar.setBounds(20, 20, 150, 20);
		jbtn_graficar.addActionListener(this);

		jbtn_getFiles=new JButton("Guardar Resultados");
		jbtn_getFiles.setBounds(20, 50, 150, 20);
		jbtn_getFiles.addActionListener(this);

		jbtn_getImages=new JButton("Guardar Imagen");
		jbtn_getImages.setBounds(20, 80, 150, 20);
		jbtn_getImages.addActionListener(this);

		jcmb_Modelo=new JComboBox(modelos);
		jcmb_Modelo.setBounds(20,110,150,20);
		jcmb_Modelo.addActionListener(this);

		jcmb_Grafico=new JComboBox(graficos);
		jcmb_Grafico.setBounds(20, 140, 150, 20);

		//Panel controles
		pnl_controles=new JPanel();
		pnl_controles.setBounds(PSCNT_X, PSCNT_Y, CNT_X, CNT_Y);
		pnl_controles.setLayout(null);
		pnl_controles.setBackground(Color.BLUE);

		pnl_controles.add(jbtn_graficar);
		pnl_controles.add(jbtn_getFiles);
		pnl_controles.add(jbtn_getImages);
		pnl_controles.add(jcmb_Modelo);
		pnl_controles.add(jcmb_Grafico);
		pnl_controles.setVisible(true);

		pnl_principal.add(pnl_graficos);
		pnl_principal.add(pnl_controles);


		this.getContentPane().add(pnl_principal);
		this.setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {


		if(e.getSource()==jbtn_graficar){
			jcmb_Modelo.setSelectedIndex(jcmb_Modelo.getSelectedIndex());
			if(!pnl_graficos.isVisible()){
				pnl_graficos.setVisible(true);
			}
			pnl_graficos.repaint();
			pnl_principal.add(pnl_graficos);
			pnl_principal.repaint();
		}

		if(e.getSource()==jbtn_getFiles){
			pnl_graficos.saveResultsToFile();
		}

		if(e.getSource()==jbtn_getImages){
			pnl_graficos.saveSnaps(pnl_graficos);
		}

		if(e.getSource()==jcmb_Modelo){
			pnl_graficos=new pnlGrafico(new AnalisisAnaliticoArray(jcmb_Modelo.getSelectedIndex()));
			pnl_graficos.setLayout(null);
			pnl_graficos.setBounds(PSGRA_X, PSGRA_Y, GRA_X, GRA_Y);
			pnl_graficos.setVisible(false);
		}
		pnl_graficos.setSimulacion(jcmb_Grafico.getSelectedIndex());

	}

}
