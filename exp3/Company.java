/*Aim:WAP to create a program demonstrating multilevel inheritance using the classes
Person, Employee, and Manager. Accept the manager details and display them. Handle
invalid salary input using exception handling.
Coder:Aayan
Class:SE-A/Comps
Roll no:20
  */

import java.util.Scanner;

public class Company {
    public static void main(String[] args) {

        try (Scanner sc = new Scanner(System.in)) {

            System.out.print("Enter Age: ");
            int age = sc.nextInt();
            sc.nextLine();

            System.out.print("Enter Name: ");
            String name = sc.nextLine();

            System.out.print("Enter Height: ");
            double height = sc.nextDouble();
            sc.nextLine();

            System.out.print("Enter Gender: ");
            String gender = sc.nextLine();

            System.out.print("Enter Employee ID: ");
            int id = sc.nextInt();

            System.out.print("Enter Salary: ");
            int salary = sc.nextInt();

            if (salary < 0) {
                throw new IllegalArgumentException("Salary cannot be negative");
            }

            sc.nextLine();

            System.out.print("Enter Department: ");
            String department = sc.nextLine();

            System.out.print("Enter Job Role: ");
            String job_role = sc.nextLine();

            System.out.print("Enter Number of Team Members: ");
            int team = sc.nextInt();

            Manager m = new Manager(
                age, name, height, gender,
                id, salary, department, job_role, team
            );

            System.out.println("\n--- Manager Details ---");
            m.display();

        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}                                                                           
