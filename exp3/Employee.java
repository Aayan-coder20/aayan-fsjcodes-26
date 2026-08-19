/*Aim:WAP to create a program demonstrating multilevel inheritance using the classes
Person, Employee, and Manager. Accept the manager details and display them. Handle
invalid salary input using exception handling.
Coder:Aayan
Class:SE-A/Comps
Roll no:20
  */

public class Employee extends Person {
    int id;
    int salary;
    String department;
    String job_role;

    Employee(int age, String name, double height, String gender,
             int id, int salary, String department, String job_role) {

        super(age, name, height, gender);

        this.id = id;
        this.salary = salary;
        this.department = department;
        this.job_role = job_role;
    }

    void display() {
        super.display();
        System.out.println("Employee ID: " + id);
        System.out.println("Salary: " + salary);
        System.out.println("Department: " + department);
        System.out.println("Job Role: " + job_role);
    }
}
