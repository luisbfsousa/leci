package aula11.ex2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Scanner;

public class ex2 {
    private HashMap<String, estudante> students;
    private Icalculadora calculadora;

    public ex2(Icalculadora calculadora) {
        this.calculadora = calculadora;
        students = new HashMap<String, estudante>();
    }

    public void load(String filename) throws FileNotFoundException {
        Scanner scanner = new Scanner(new File(filename));
        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            String[] parts = line.split("\\|");
            String name = parts[0].trim();
            double grade1 = Double.parseDouble(parts[1].trim());
            double grade2 = Double.parseDouble(parts[2].trim());
            double grade3 = Double.parseDouble(parts[3].trim());
            estudante student = new estudante(name, grade1, grade2, grade3);
            students.put(name, student);
        }
        scanner.close();
    }

    public void removeStudent(String name) {
        students.remove(name);
    }

    public void addStudent(estudante student) {
        students.put(student.getNome(), student);
    }

    public estudante getStudent(String name) {
        return students.get(name);
    }

    public double NotaMedia(String name) {
        estudante student = students.get(name);
        return calculadora.NotaMedia(student);
    }

    public void printAllStudents() {
        for (estudante student : students.values()) {
            System.out.println(student.getNome() + ": " + calculadora.NotaMedia(student));
        }
    }
}
