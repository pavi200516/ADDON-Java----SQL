//address book
import java.util.Scanner;
class main {
	public static void main(String[] args) {
	    Scanner s=new Scanner(System.in);
	    int size=2;
	    String[] name=new String[size];
	    String[] num=new String[size];
	    System.out.println("Enter 2 info(Name and Phone Number):");
	    for(int i=0;i<size;i++){
	        System.out.println("Enter name"+(i+1)+":");
	        name[i]=s.nextLine();
	        System.out.println("Enter number"+(i+1)+":");
	        num[i]=s.nextLine();
	    }
	    System.out.println("ADDRESS BOOK");
	    System.out.println("-------------------");
	    for(int i=0;i<size;i++){
	        System.out.println("Name:"+name[i]);
	        System.out.println("Phone:"+num[i]);
	        System.out.println("-------------------");
	    }
	}
	}
