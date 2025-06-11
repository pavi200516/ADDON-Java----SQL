package program;

public class demo1 {
	public static void main(String[] args) {
		// finding even numbers in an array
		int[] number= {1,2,3,4,5,6,7,8};
		int sum=0;
		for(int i=0;i<=number.length-1;i++){
		    if(number[i]%2==0) {
		    	System.out.println(number[i]);
        }
		}
	}
}
