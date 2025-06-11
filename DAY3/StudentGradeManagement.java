package method;
import java.util.Scanner;


class Student {
 String name;

 void getDetails() {
     Scanner sc = new Scanner(System.in);
     System.out.print("Enter student name: ");
     name = sc.nextLine();
 }
}


class Marks extends Student {
 int marks1, marks2, marks3, marks4, marks5;

 void getMarks() {
     Scanner sc = new Scanner(System.in);
     System.out.print("Enter marks in subject 1: ");
     marks1 = sc.nextInt();
     System.out.print("Enter marks in subject 2: ");
     marks2 = sc.nextInt();
     System.out.print("Enter marks in subject 3: ");
     marks3 = sc.nextInt();
     System.out.print("Enter marks in subject 4: ");
     marks4 = sc.nextInt();
     System.out.print("Enter marks in subject 5: ");
     marks5 = sc.nextInt();
 }
}

class Result extends Marks {
 void displayResult() {
     int total = marks1 + marks2 + marks3 +marks4 +marks5;
     float percentage = total / 5.0f;

     System.out.println(" ");
     System.out.println("Name: " + name);
     System.out.println("Marks: " + marks1 + ", " + marks2 + ", " + marks3 + ", " + marks4 + ", " + marks5 + ", " );
     System.out.println("Total: " + total);
     System.out.println("Percentage: " + percentage + "%");

     if (percentage >= 40) {
         System.out.println("Status: Passed");
     } else {
         System.out.println("Status: Failed");
     }
 }
}


public class sample1 {
 public static void main(String[] args) {
     Result r = new Result();
     r.getDetails();
     r.getMarks();
     r.displayResult();
 }
}
