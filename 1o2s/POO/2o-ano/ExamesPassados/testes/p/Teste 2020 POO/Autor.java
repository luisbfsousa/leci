public class Autor implements Comparable<Autor> {
    private String nome;
    private int anoNascimento;

    public Autor(String nome, int anoNascimento) {
        this.nome = nome;
        this.anoNascimento = anoNascimento;
    }

    @Override
    public int compareTo(Autor o) {
        return nome.compareTo(o.nome);
    }

    @Override
    public String toString() {
        return String.format("%s (%d-)", nome, anoNascimento);
    }

}
