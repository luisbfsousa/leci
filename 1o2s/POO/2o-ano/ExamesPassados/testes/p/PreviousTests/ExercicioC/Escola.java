package ExercicioC;

import java.util.HashSet;
import java.util.Set;

public class Escola {
    
    private String nome, endereço;

    private Set<Teste> testesList = new HashSet<>();

    public Escola(String nome, String endereço) {
        this.nome = nome;
        this.endereço = endereço;
    }

    public void add(Teste x) {
        testesList.add(x);
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

    public Set<Teste> getTestesList() {
        return testesList;
    }

    public void setTestesList(Set<Teste> testesList) {
        this.testesList = testesList;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((endereço == null) ? 0 : endereço.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((testesList == null) ? 0 : testesList.hashCode());
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
        Escola other = (Escola) obj;
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
        if (testesList == null) {
            if (other.testesList != null)
                return false;
        } else if (!testesList.equals(other.testesList))
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "Escola [endereço=" + endereço + ", nome=" + nome + ", testesList=" + testesList + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("NOME: "+ nome + "\n");
        sb.append("ENDEREÇO: " + endereço + "\n");
        for (Teste teste : testesList) {
            sb.append(teste + "\n");
        }
        return sb.toString();
    }

}