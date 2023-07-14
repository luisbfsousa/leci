package aula08.ex2;

import java.util.ArrayList;

public class Ementa {
    
    private String nome;
    private String local;
    private ArrayList<Prato> pratos;

    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
        this.pratos = new ArrayList<Prato>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public ArrayList<Prato> getPratos() {
        return pratos;
    }

    public void setPratos(ArrayList<Prato> pratos) {
        this.pratos = pratos;
    }

    public boolean addPrato(Prato prato) {
        return this.pratos.add(prato);
    }

    @Override
    public String toString() {
        return "Ementa: " + this.getNome() + " - " + this.getLocal();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Ementa other = (Ementa) obj;
        return this.getNome().equals(other.getNome()) && this.getLocal().equals(other.getLocal()) && this.getPratos().equals(other.getPratos());
    }

}