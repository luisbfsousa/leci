package aula06.ex2;

public class Contacto {
    private int numero;
    private String nome;
    private String morada;

    public Contacto(int numero, String nome, String morada) {
        this.numero = numero;
        this.nome = nome;
        this.morada = morada;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(){
        this.numero = numero;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(){
        this.nome = nome;
    }

    public String getMorada(){
        return morada;
    }

    public void setMorada(){
        this.morada = morada;
    }

    @Override
    public String toString() {
        return "Contacto{" + "numero=" + numero + ", nome=" + nome + ", morada=" + morada + '}';
    }
}
