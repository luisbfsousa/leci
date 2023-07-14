package ExercicioA;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

public class Cruzeiro {

    Comparator<Cabine> ordenarCabines = new Comparator<Cabine>() {
        public int compare(Cabine x, Cabine y){
            //return (x.getNumero() >= y.getNumero() ? 1 : -1); //codigo com "igual"
            return x.getNumero() - y.getNumero();
        }
    };

    private String nome, dataComeço;
    private String[] cidadesList;
    private int duracao;

    private Set<Cabine> cabinesList = new TreeSet<>(ordenarCabines);

    public Cruzeiro(String nome, String[] cidadesList, String dataComeço) {
        this.nome = nome;
        this.dataComeço = dataComeço;
        this.cidadesList = cidadesList;
    }

    public void add(Cabine x) {
        cabinesList.add(x);
    }

    public String getNome() {
        return nome;
    }

    public String getDataComeço() {
        return dataComeço;
    }
    
    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }
    
    public Set<Cabine> getCabinesList() {
        return cabinesList;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + Arrays.hashCode(cidadesList);
        result = prime * result + ((dataComeço == null) ? 0 : dataComeço.hashCode());
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
        Cruzeiro other = (Cruzeiro) obj;
        if (!Arrays.equals(cidadesList, other.cidadesList))
            return false;
        if (dataComeço == null) {
            if (other.dataComeço != null)
                return false;
        } else if (!dataComeço.equals(other.dataComeço))
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
        sb.append("Navio " + nome + ", partida em " + dataComeço + "\n");
        sb.append("Itenerário: " + Arrays.toString(cidadesList) + "\n" );
        for (Cabine cabine : cabinesList) {
            sb.append(cabine);
        }
        return sb.toString();

        //return "Navio " + nome + ", partida em " + dataComeço + "\n" + "Itenerário: " + Arrays.toString(cidadesList) + "\n" + a.toString();
    }
    
}