package aula06.ex1;

public class Bolseiro extends Aluno {
    private float valorBolsa;
    private Professor orientador;

    public Bolseiro(String nome, int cc, Date dataNasc,  Professor orientador, float valorBolsa) {
        super(nome, cc, dataNasc);
        this.valorBolsa = valorBolsa;
        this.orientador = orientador;
    }

    public float getBolsa() {
        return valorBolsa;
    }

    public Professor getOrientador() {
        return orientador;
    }

    public void setBolsa(float valorBolsa) {
        this.valorBolsa = valorBolsa;
    }

    public void setOrientador(Professor orientador) {
        this.orientador = orientador;
    }

    @Override
    public String toString() {
        return "Bolseiro{" + "valorBolsa=" + valorBolsa + " Orientador: "+ orientador+'}';
    }
    
}
