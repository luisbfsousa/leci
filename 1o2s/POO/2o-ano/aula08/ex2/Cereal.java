package aula08.ex2;

public class Cereal extends Alimento implements Vegetariano {

    private String nome;

    public Cereal(double proteinas, double calorias, double peso, String nome) {
        super(proteinas, calorias, peso);
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "Cereal{" + "nome=" + nome + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Cereal other = (Cereal) obj;
        return super.equals(obj) && this.getNome().equals(other.getNome());
    }
    
}