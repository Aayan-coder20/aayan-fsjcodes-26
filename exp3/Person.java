/*Aim:WAP to create a program demonstrating multilevel inheritance using the classes
Person, Employee, and Manager. Accept the manager details and display them. Handle
invalid salary input using exception handling.
Coder:Aayan
Class:SE-A/Comps
Roll no:20
  */


public class Person {
    private int age;
    private String name;
    private double height;
    private String gender;

    Person(int age, String name, double height, String gender) {
        this.age = age;
        this.name = name;
        this.height = height;
        this.gender = gender;
    }

    void display() {
        System.out.println("Age: " + age);
        System.out.println("Name: " + name);
        System.out.println("Height: " + height);
        System.out.println("Gender: " + gender);
    }
}
