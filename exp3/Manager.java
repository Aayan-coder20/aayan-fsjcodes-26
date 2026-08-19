/*Aim:WAP to create a program demonstrating multilevel inheritance using the classes
Person, Employee, and Manager. Accept the manager details and display them. Handle
invalid salary input using exception handling.
Coder:Aayan
Class:SE-A/Comps
Roll no:20
  */


public class Manager extends Employee {
    int no_of_team_members;
    String name_of_department;

    Manager(int age, String name, double height, String gender,
            int id, int salary, String department, String job_role,
            int no_of_team_members) {

        super(age, name, height, gender, id, salary, department, job_role);

        this.no_of_team_members = no_of_team_members;
        this.name_of_department = department;
    }

    void display() {
        super.display();
        System.out.println("Number of Team Members: " + no_of_team_members);
        System.out.println("Manager Department: " + name_of_department);
    }
}
