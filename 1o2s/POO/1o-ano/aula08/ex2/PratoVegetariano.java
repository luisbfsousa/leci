package aula08.ex2;

import java.util.ArrayList;

public class PratoVegetariano extends Prato implements Vegetariano {

    private ArrayList<Vegetariano> alimentos;

    public PratoVegetariano(String nome) {
        super(nome);
        this.alimentos = new ArrayList<>();
    }

    public void addAlimento(Vegetariano alimento) {
        this.alimentos.add(alimento);
    }
    
    @Override
    public String toString() {
        return "PratoVegetariano{" + "nome=" + getNome() + ", alimentos=" + alimentos + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        PratoVegetariano other = (PratoVegetariano) obj;
        return this.getNome().equals(other.getNome());
    }
    
}
