import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.HeadlessException;

import javax.swing.JFrame;

/**
 *
 */

/**
 * @author Silvio
 *
 */
public class MiFrame extends JFrame {

	public MiFrame() throws HeadlessException {
		super();
		Container cnt=null;
		this.setTitle("Simulacion GNA");
		this.setLayout(null);
		this.setSize(1150,600);
		this.setResizable(false);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		cnt=this.getContentPane();
		cnt.add(new MiPanel());
		this.setContentPane(cnt);
	}

}
