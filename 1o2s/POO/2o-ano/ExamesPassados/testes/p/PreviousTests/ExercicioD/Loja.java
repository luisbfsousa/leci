package ExercicioD;

import java.util.ArrayList;
import java.util.List;

public class Loja {

    private String nome, endereço;
    private List<Alimento> alimentoSet = new ArrayList<>();

    public Loja(String nome, String endereço) {
        this.nome = nome;
        this.endereço = endereço;
    }

    public void add(Alimento x) {
        alimentoSet.add(x);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereço() {
        return endereço;
    }

    public void setEndereço(String endereço) {
        this.endereço = endereço;
    }

    public List<Alimento> getAlimentoSet() {
        return alimentoSet;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((alimentoSet == null) ? 0 : alimentoSet.hashCode());
        result = prime * result + ((endereço == null) ? 0 : endereço.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Loja other = (Loja) obj;
        if (alimentoSet == null) {
            if (other.alimentoSet != null)
                return false;
        } else if (!alimentoSet.equals(other.alimentoSet))
            return false;
        if (endereço == null) {
            if (other.endereço != null)
                return false;
        } else if (!endereço.equals(other.endereço))
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    @Override
    public String toString() {
        // return "Loja [alimentoSet=" + alimentoSet + ", endereço=" + endereço + ",
        // nome=" + nome + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("Nome: " + nome + "\n");
        sb.append("Endereço: " + endereço + "\n");
        for (Alimento alimento : alimentoSet) {
            sb.append(alimento + "\n");
        }
        return sb.toString();
    }

}