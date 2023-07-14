package aula08.ex2;

import java.util.ArrayList;

public class Prato {
    
    private String nome;
    private ArrayList<Alimento> alimentos;

    public Prato(String nome) {
        this.nome = nome;
        this.alimentos = new ArrayList<>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Alimento> getAlimentos() {
        return alimentos;
    }

    public void setAlimentos(ArrayList<Alimento> alimentos) {
        this.alimentos = alimentos;
    }

    public boolean addAlimento(Alimento alimento) {
        return this.alimentos.add(alimento);
    }
    
    @Override
    public String toString() {
        return "Prato{" + "nome=" + nome + ", alimentos=" + alimentos + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Prato other = (Prato) obj;
        return this.getNome().equals(other.getNome());
    }

}
