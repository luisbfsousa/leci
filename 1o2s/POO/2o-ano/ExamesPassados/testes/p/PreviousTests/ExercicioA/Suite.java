package ExercicioA;

public class Suite extends Cabine implements InterfaceExtras{
    
    private int nQuartos;
    private Extra extra;

    public Suite(int numero, int capMax, int nQuartos) {
        super(numero, capMax);
        this.nQuartos = nQuartos;
    }

    public Suite(int numero, int capMax) {
        super(numero, capMax);
    }

    public Suite(int numero, int capMax, int nQuartos, String[] strings) {
        super(numero, capMax, strings);
        this.nQuartos = nQuartos;
    }

    public int getnQuartos() {
        return nQuartos;
    }

    public void setnQuartos(int nQuartos) {
        this.nQuartos = nQuartos;
    }

    @Override
    public void Extra(Extra e) {
        extra = e;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((extra == null) ? 0 : extra.hashCode());
        result = prime * result + nQuartos;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        if (getClass() != obj.getClass())
            return false;
        Suite other = (Suite) obj;
        if (extra != other.extra)
            return false;
        if (nQuartos != other.nQuartos)
            return false;
        return true;
    }
    

    @Override
    public String toString() {
        return "Suite c/ " + nQuartos + " quartos " + super.toString() + "\n";
    }

    
}

    