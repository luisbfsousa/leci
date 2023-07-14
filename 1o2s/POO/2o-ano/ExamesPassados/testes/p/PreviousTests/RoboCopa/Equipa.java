package RoboCopa;

import java.util.HashSet;
import java.util.Set;

public class Equipa {
    
    private String nome, responsavel;;
    private int golosMarcados, golosSofridos;
    private Set<Robo> robosSet = new HashSet<>();

    public Equipa(String nome, String responsavel) {
        this.nome = nome;
        this.responsavel = responsavel;
    }


    public void add(Robo r) {
        robosSet.add(r);
    }

    public void remove(Robo r) {
        robosSet.remove(r);
    }

    public String getNome() {
        return nome;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public int getGolosMarcados() {
        for (Robo robo : robosSet) {
            golosMarcados += robo.getGolos();
        }
        return golosMarcados;
    }


    public int getGolosSofridos() {
        return golosSofridos;
    }

    public Robo[] getRobos() {
        Robo[] array = new Robo[robosSet.size()];
        int i = 0;
        for (Robo robo : robosSet) {
            array[i] = robo;
            i++;
        }
        return array;
    }
    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + golosMarcados;
        result = prime * result + golosSofridos;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((responsavel == null) ? 0 : responsavel.hashCode());
        result = prime * result + ((robosSet == null) ? 0 : robosSet.hashCode());
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
        Equipa other = (Equipa) obj;
        if (golosMarcados != other.golosMarcados)
            return false;
        if (golosSofridos != other.golosSofridos)
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (responsavel == null) {
            if (other.responsavel != null)
                return false;
        } else if (!responsavel.equals(other.responsavel))
            return false;
        if (robosSet == null) {
            if (other.robosSet != null)
                return false;
        } else if (!robosSet.equals(other.robosSet))
            return false;
        return true;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Equipa " + nome + ", treinada por " + responsavel + " (" + robosSet.size() + " jogadores)" + "\n");
        sb.append("robos= ");
        for (Robo robo : robosSet) {
            sb.append(robo);
        }
        sb.append("\nGolos marcados= " + golosMarcados + "\n");
        return sb.toString();
    }

    public Equipa(String nome, String responsavel, Set<Robo> robosSet) {
        this.nome = nome;
        this.responsavel = responsavel;
        this.robosSet = robosSet;
    }


    
    
}