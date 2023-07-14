package RoboCopa;

public class Jogo {

    private int tempoJogo, tempoDecorrido;
    private Equipa eq1, eq2;
    private Bola bola;
    
    public Jogo(Equipa eq1, Equipa eq2, Bola bola, int tempoJogo) {
        this.tempoJogo = tempoJogo;
        this.eq1 = eq1;
        this.eq2 = eq2;
        this.bola = bola;
    }

    public Bola getBola() {
        return bola;
    }
    public int getTempoJogo() {
        return tempoJogo;
    }

    public int getTempoDecorrido() {
        return tempoDecorrido;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + tempoDecorrido;
        result = prime * result + tempoJogo;
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
        Jogo other = (Jogo) obj;
        if (tempoDecorrido != other.tempoDecorrido)
            return false;
        if (tempoJogo != other.tempoJogo)
            return false;
        return true;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" Jogo entre " + eq1.getNome() + " e " + eq2.getNome() + "\n");
        return sb.toString();
    }

    
   
}