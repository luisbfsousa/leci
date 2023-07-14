package aula11.ex2;

public class calculadora implements Icalculadora {
    public double NotaMedia(estudante student) {
        double sum = student.getNota1() + student.getNota2() + student.getNota3();
        return sum / 3.0;
    }
}