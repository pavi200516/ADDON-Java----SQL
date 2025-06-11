import java.util.Scanner;
class Main {
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        System.out.println("Enter the number:");
        int a=s.nextInt();
        System.out.println("Enter the range:");
        int b=s.nextInt();
        for (int i=a;i<b;i++){
          if(i%2==0){
              System.out.println(i);
          }  
        }
    }
}
