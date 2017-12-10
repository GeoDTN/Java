package mypackage;

import javax.swing.JOptionPane;

class potenza{ 
	 private int base;
	 
	 potenza(int b){
	      base=b; 
	 } 
	 public void pow(int x){
		 int i = 1;
		 int Ris = base;
		 while (i < x)
		 {
			 Ris = Ris * base;
			 i++;
		 }
		 JOptionPane.showMessageDialog(null,"Base " + Integer.toString(base) +
					" Potenza " + Integer.toString(Ris));
		 //System.out.println(Ris);
	 }
	 public void cambiobase(int nuovo){ 
	     base=nuovo; 
	 }
}


