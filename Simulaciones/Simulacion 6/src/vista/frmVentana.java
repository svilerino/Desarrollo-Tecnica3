/**
 *
 */
package vista;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Arrays;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextField;

import modelo.Voces;

/**
 * @author Silvio
 *
 */
public class frmVentana extends JFrame implements ActionListener {

	private Voces voices;

	private JTabbedPane jtbd_ventana;
	private JPanel jpnl_controles;
	private JLabel jlbl_cantpersonas;
	private JLabel jlbl_cantmuestras;
	private JLabel jlbl_cantintervalos;
	private JTextField jtxt_cantpersonas;
	private JTextField jtxt_cantmuestras;
	private JTextField jtxt_cantintervalos;
	private JButton jbtn_graficar;
	private pnlHistograma jpnl_histo;

	public frmVentana(){
		super();
		this.setBounds(10, 10, 800, 800);
		this.setLayout(new GridLayout(1,0));
		this.setTitle("Vileriño Silvio, Simulacion gritos");
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setResizable(false);
		this.addComponents();
		this.setVisible(true);
	}

	private void addComponents(){
		jtbd_ventana=new JTabbedPane();

		jpnl_controles=new JPanel();
		jpnl_controles.setLayout(new GridLayout(0,2));
		jpnl_controles.setSize(800, 400);
		jpnl_controles.setVisible(true);

		jlbl_cantpersonas=new JLabel("Cantidad Personas por Grito:");
		jlbl_cantmuestras=new JLabel("Cantidad Muestras:");
		jlbl_cantintervalos=new JLabel("Cantidad Intervalos:");

		jtxt_cantpersonas=new JTextField("20");
		jtxt_cantmuestras=new JTextField("1000000");
		jtxt_cantintervalos=new JTextField("20");

		jbtn_graficar=new JButton("Graficar");
		jbtn_graficar.addActionListener(this);

		jpnl_controles.add(jlbl_cantpersonas);
		jpnl_controles.add(jtxt_cantpersonas);
		jpnl_controles.add(jlbl_cantmuestras);
		jpnl_controles.add(jtxt_cantmuestras);
		jpnl_controles.add(jlbl_cantintervalos);
		jpnl_controles.add(jtxt_cantintervalos);
		jpnl_controles.add(jbtn_graficar);

//---------------------------------------------------------------------------

		jpnl_histo=new pnlHistograma(0,null);


		JPanel jpnl_tabcontrol=new JPanel();
		jpnl_tabcontrol.setLayout(new BorderLayout());
		jpnl_tabcontrol.add(jpnl_controles,BorderLayout.NORTH);
		jpnl_tabcontrol.setVisible(true);


		jtbd_ventana.addTab("Controles", jpnl_tabcontrol);
		jtbd_ventana.addTab("Histograma", jpnl_histo);
		this.getContentPane().add(jtbd_ventana);
	}

	/* (non-Javadoc)
	 * @see java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent)
	 */
	public void actionPerformed(ActionEvent e) {

		if(e.getSource()==jbtn_graficar){
			voices=new Voces(Integer.parseInt(this.jtxt_cantmuestras.getText()),Integer.parseInt(this.jtxt_cantpersonas.getText()),Integer.parseInt(this.jtxt_cantintervalos.getText()));
			jpnl_histo.setNum_intervalos(voices.getCantidad_intervalos());

			//jpnl_histo.setValores(voices.getHistograma());

			double a[]=new double[1000000];
			
			for(int b=0;b<a.length;b++)
				a[b]=1000000*Math.random();
			
			a[0]=1000000;
			
			jpnl_histo.setValores(a);




			jpnl_histo.repaint();
			jtbd_ventana.setSelectedIndex(1);
			//JOptionPane.showMessageDialog(null, voices);
			System.out.println(voices);
		}


	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		frmVentana vtn=new frmVentana();
		vtn.jbtn_graficar.doClick();
	}

}
