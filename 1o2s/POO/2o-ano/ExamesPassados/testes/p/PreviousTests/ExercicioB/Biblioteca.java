package ExercicioB;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

public class Biblioteca {
    
    private String nome, endereço;

    Comparator<EntPrincipal> compareTitulo = new Comparator<EntPrincipal>() {
        public int compare(EntPrincipal a, EntPrincipal b){
            return a.getTitulo().compareTo(b.getTitulo());
        }
    };

    private Set<EntPrincipal> conjutoList = new TreeSet<>(compareTitulo);

    public Biblioteca(String nome, String endereço) {
        this.nome = nome;
        this.endereço = endereço;
    }

    public void add(EntPrincipal x){
        conjutoList.add(x);
    }

    public String getNome() {
        return nome;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((conjutoList == null) ? 0 : conjutoList.hashCode());
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
        Biblioteca other = (Biblioteca) obj;
        if (conjutoList == null) {
            if (other.conjutoList != null)
                return false;
        } else if (!conjutoList.equals(other.conjutoList))
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
        StringBuilder sb = new StringBuilder();
        sb.append("Biblioteca: " + nome + "\n");
        sb.append("Morada: " + endereço + "\n\n");
        for (EntPrincipal entPrincipal : conjutoList) {
            sb.append(entPrincipal);
        }
        return sb.toString();
    }
    
}