package basicprogram;
import java.util.Scanner;

public class nestedif {

	public static void main(String[] args) {
		Scanner s=new Scanner(System.in);
        System.out.println("Enter the pin number:");
        int pin=s.nextInt();
        
        if(pin==1234) {
        	System.out.println("Enter the amount:");
            int amt=s.nextInt();
			if(amt<=5000) {
				System.out.println("Withdrawn successfully");
			}
			else {
				System.out.println("Insufficient amount");
			}

	}
        else {
        	System.out.println("Invalid pin number");
        }
	}

}
