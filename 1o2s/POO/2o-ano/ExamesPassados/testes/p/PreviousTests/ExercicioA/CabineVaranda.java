package ExercicioA;

public class CabineVaranda extends Cabine implements InterfaceExtras{
    
    private TipoVaranda tipoVaranda;
    private Extra extra;

    public CabineVaranda(int numero, int capMax, TipoVaranda tipoVaranda) {
        super(numero, capMax);
        this.tipoVaranda = tipoVaranda;
    }

    public TipoVaranda getTipoVaranda() {
        return tipoVaranda;
    }

    public void setTipoVaranda(TipoVaranda tipoVaranda) {
        this.tipoVaranda = tipoVaranda;
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
        result = prime * result + ((tipoVaranda == null) ? 0 : tipoVaranda.hashCode());
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
        CabineVaranda other = (CabineVaranda) obj;
        if (extra != other.extra)
            return false;
        if (tipoVaranda != other.tipoVaranda)
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "Cabine com Varanda " + tipoVaranda + super.toString();
    }
     
}