package aula08.ex2;

public class Legume extends Alimento implements Vegetariano {

    private String nome;

    public Legume(double proteinas, double calorias, double peso, String nome) {
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
        return "Legume{" + "nome=" + nome + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Legume other = (Legume) obj;
        return super.equals(obj) && this.getNome().equals(other.getNome());
    }
    
}