/*
Aim:WAP to store and display student information of few styudents.
Info like name,uin,cgpa
Coder:Aayan
Class:SE Comps A
 */

public class Exp1 {
    public static void main(String[] args) {
        Student s1 = new Student();
        s1.name = "Aayan";
        s1.uin = "251P033";
        s1.cgpa = 8;
        s1.displayDetails();

        Student s2 = new Student();
        s2.name = "Huzaifa";
        s2.uin = "251P034";
        s2.cgpa = 9;
        s2.displayDetails();

        Student s3 = new Student();
        s3.name = "Zaara";
        s3.uin = "251P032";
        s3.cgpa = 9;
        s3.displayDetails();
    }

    
}

class Student {
    String name;
    String uin;
    double cgpa;

    void displayDetails() {
        System.out.println("------------------");
        System.out.println("Enter name: "+name);
        System.out.println("Enter UIN: "+uin);
        System.out.println("Enter CGPA: "+cgpa);
        System.out.println("--------------------");
    }
}

