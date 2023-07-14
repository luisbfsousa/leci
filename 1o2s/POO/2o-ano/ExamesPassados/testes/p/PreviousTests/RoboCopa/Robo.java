package RoboCopa;

public class Robo extends ObjetoMovel {
    
    private String id;
    private TipoJogador tipoJogador;
    private int nGolos = 0;

    public Robo( String id, TipoJogador tipoJogador, int x, int y) {
        super(x, y);
        this.id = id;
        this.tipoJogador = tipoJogador;
    }

    public Robo(String id, TipoJogador tipoJogador) {
        this.id = id;
        this.tipoJogador = tipoJogador;
    }


    public void marcaGolo(){
        nGolos++;
    }

    public String getId() {
        return id;
    }

    public TipoJogador getTipo() {
        return tipoJogador;
    }

    public int getGolos() {
        return nGolos;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        result = prime * result + nGolos;
        result = prime * result + ((tipoJogador == null) ? 0 : tipoJogador.hashCode());
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
        Robo other = (Robo) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        if (nGolos != other.nGolos)
            return false;
        if (tipoJogador != other.tipoJogador)
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "id=" + id + " tipo= " + tipoJogador + " *;* ";
    }

    
    

    

    
}