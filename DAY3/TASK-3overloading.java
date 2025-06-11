package methods;
public class task3 {
    public int sum(int a, int b) {
        int result = a + b;
        System.out.println("Sum of integers: " + result);
        return result;
    }
    public double sum(double a, double b) {
        double result = a + b;
        System.out.println("Sum of doubles: " + result);
        return result;
    } 
    public void sum() {
        sum(5, 10);         
        sum(3.5, 4.5);      
    }
    public static void main(String[] args) {
        task3 demo = new task3();
        demo.sum();  
    }
}
