package package1;
import java.util.Random;
public class Class1 {
private static final int maxValue=1000;	
public int[] getTimes(){ 
	  int[] dice=new int[6];
	  for(int x=0;x<=maxValue; x++){
		 Random diceFace=new Random();		
		  int face = Math.abs(diceFace.nextInt()) % 6;
	      dice[face]++;	
	       }		 
		return dice;		 
	}
	
public double calculateEntropy(int numOfThrows )	{	
	double entropy=0.;
	int[] timesForEach=this.getTimes();
	for(int x=0;x<timesForEach.length;x++){
		entropy+=-1.0*((double)timesForEach[x]/numOfThrows)*Math.log((double)timesForEach[x]/numOfThrows)/Math.log(6);		   
	  }
	return entropy;
   }	
public static void main(String[] args ){
	Class1 findEntropy=new Class1();
	System.out.println("Welcome to Java Programming Lab");
	System.out.println("Entropy is "+findEntropy.calculateEntropy(maxValue));
	
	}
}
