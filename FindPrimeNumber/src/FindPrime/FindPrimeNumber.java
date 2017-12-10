package FindPrime;
import java.util.Scanner;
public class FindPrimeNumber {
	private int number;
	public void setMaxNumber(int number)
	{

this.number=number;
	}
	public int getMaxNumber()
	{

return number;
	}
public Boolean isValid()
	{ 
		if(number<=1)
		return false;
	   return true;		
	}
public void printPrimeNumbers(){
	if(this.isValid())
	{
			int x=2;
			System.out.print(x+" ");
			++x;
			while(x<=number){
				
				         for(int y=2;y<x;y++){ 
					        if(x%y==0)
						    break; 
				         
					 else
						System.out.print(x+" ");
						break;
				}
				
				x++;
	 }

		}
		else 
			System.out.print("Please enter a valid number");
	}
	
	public static void main(String[] args ){
		
		FindPrimeNumber fndPmNums=new FindPrimeNumber();
		Scanner sc= new Scanner(System.in);
		System.out.println("Please enter the number up to which you want to see prime numbers");
		fndPmNums.setMaxNumber(sc.nextInt());
		fndPmNums.getMaxNumber();
		fndPmNums.printPrimeNumbers();
	}
	
}
