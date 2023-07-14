package aula11.ex2;

public class estudante {
    private String nome;
    private double nota1;
    private double nota2;
    private double nota3;

    public estudante(String nome, double nota1, double nota2, double nota3) {
        this.nome = nome;
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
    }

    public String  getNome(){
        return nome;
    }

    public void setNome(){
        this.nome = nome;
    }

    public double getNota1(){
        return nota1;
    }

    public void setNota1(){
        this.nota1 = nota1;
    }

    public double getNota2(){
        return nota2;
    }   

    public void setNota2(){
        this.nota2 = nota2;
    }

    public double getNota3(){
        return nota3;
    }

    public void setNota3(){
        this.nota3 = nota3;
    }

    @Override
    public String toString() {
        return "Nome do aluno " + nome + "| nota 1: " + nota1 + "| nota 2: " + nota2 + "| nota 3: " + nota3;
    }
}
