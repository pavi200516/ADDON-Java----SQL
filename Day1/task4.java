package basic;
import java.util.Scanner;
public class Sample1 {

	public static void main(String[] args) {
		 Scanner s=new Scanner(System.in);
	     System.out.println("Enter the number1:");
	     int a=s.nextInt();
	     System.out.println("Enter the number2:");
	     int b=s.nextInt();
	     System.out.println("if OP num=1(add) / OP num=2(sub) / OP num=3(mul) /OP num=4(div) ");
	     System.out.println("Enter the operator number:");
	     int c=s.nextInt();
	     switch(c) {
	     case 1:
	    	 System.out.println(a+b);
	    	 break;
	     
	     case 2:
	    	 System.out.println(a-b);
	    	 break;
		
		   case 3:
			   System.out.println(a*b);
			   break;
		
	     case 4:
		     System.out.println(a/b);
			   break;
		  default:
			   System.out.println("invalid number");
		     break;
		}
	}

}
