import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        System.out.println("Enter your age:");
        Scanner s=new Scanner(System.in);
        int age=s.nextInt();
        System.out.println("Enter Your weight:");
        int weight=s.nextInt();
        if(age>=18 && weight>=50)
            System.out.println("eligible for blood donation");
        else
            System.out.println(" not eligible for blood donation");
    }
}
