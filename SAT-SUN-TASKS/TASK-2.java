//count vowels and consonants in a string
import java.util.Scanner;
class main {
    	public static void main(String[] args) {
    	    Scanner s=new Scanner(System.in);
    	    System.out.print("Enter the string:");
			String string=s.nextLine();
			int vowels=0;
			int consonants=0;
			for(int i=0;i<string.length();i++){
			    char ch=string.charAt(i);
			    if(Character.isLetter(ch)){
			        if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'){
			            vowels++;
			        }
			        else{
			            consonants++;
			        }
			    }
			}
			System.out.println("Count of vowels:"+vowels);
			System.out.println("Count of consonants:"+consonants);
		}
	}


	           
