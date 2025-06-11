import java.util.Random;
import java.util.Scanner;
class Main {
    public static int OTP(){
        Random ran=new Random();
        return 1000 + ran.nextInt(9999);
    }
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        System.out.println("Enter your mobile number:");
        long b=s.nextLong();
        long a=9234567890L;
        if(a==b){
        int otp=OTP();
        System.out.println("One time password is:"+otp);
        }
        else{
            System.out.println("Invalid mobile number");
        }
    }
}
