package mypackage;

import javax.swing.JOptionPane;

public class Esercizio1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String s = "axcesaragt";
		char c = 'a';
		int i = 0;
		boolean trovato = false;
		boolean finale    = true;
		while (i<s.length() && !trovato) {
			if (s.charAt(i) == c)
			trovato = true;
			i++;
		}
		finale = trovato || finale;
		System.out.println(finale);
		
		potenza p = new potenza(2);
		p.pow(3);
		p.cambiobase(3);
		p.pow(3);
		p.cambiobase(4);	
		p.pow(2);
		fattoriale F = new fattoriale();
		System.out.println(Integer.toString(F.calfatt(5)));
	}

}
