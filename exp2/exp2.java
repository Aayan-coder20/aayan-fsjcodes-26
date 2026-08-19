/*Aim:WAP to create a calculator class to add two numbers. Use constructor overloading to
initialize the data with either default values or user provided values. Use method
overloading to add integer or double.
Coder:Aayan Khan
Class:SE-A/Comps
Roll no:20*/
import java.util.Scanner;

class Calculator {
    int a, b;
    double x, y;

    Calculator() {
        a = 0;
        b = 0;
        x = 0.0;
        y = 0.0;
    }

    Calculator(int a, int b) {
        this.a = a;
        this.b = b;
    }

    Calculator(double x, double y) {
        this.x = x;
        this.y = y;
    }

    int add(int a, int b) {
        return a + b;
    }

    double add(double x, double y) {
        return x + y;
    }
}

public class Exp2{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter first integer: ");
        int a = sc.nextInt();

        System.out.print("Enter second integer: ");
        int b = sc.nextInt();

        Calculator c1 = new Calculator(a, b);
        System.out.println("Integer Sum = " + c1.add(a, b));

        System.out.print("Enter first double: ");
        double x = sc.nextDouble();

        System.out.print("Enter second double: ");
        double y = sc.nextDouble();

        Calculator c2 = new Calculator(x, y);
        System.out.println("Double Sum = " + c2.add(x, y));

        sc.close();
    }
}
