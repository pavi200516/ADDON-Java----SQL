//input an array of numbers and display the reverse
import java.util.Scanner;
class main {
    	public static void main(String[] args) {
    	    Scanner s=new Scanner(System.in);
    	    System.out.println("Enter the range of numbers:");
			int range=s.nextInt();
			int number[]=new int[range];
			System.out.println("Enter the numbers:");
			for(int i=0;i<range;i++){
			    number[i] = s.nextInt();
			}
			System.out.println("Reverse order:");
			for(int i=range-1;i>=0;i--){
			    System.out.println(number[i]);
			}
		
		}

	}


	           
