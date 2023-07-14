package ExercicioA;

public class CabineJanela extends Cabine implements InterfaceExtras {

    private Janela tipoJanela;
    private Extra extra;

    public CabineJanela(int numero, int capMax, Janela tipoJanela) {
        super(numero, capMax);
        this.tipoJanela = tipoJanela;
    }

    public CabineJanela(int numero, int capMax, Janela tipoJanela, String[] strings) {
        super(numero, capMax, strings);
        this.tipoJanela = tipoJanela;
    }
    

    public Janela getTipoJanela() {
        return tipoJanela;
    }

    public void setTipoJanela(Janela tipoJanela) {
        this.tipoJanela = tipoJanela;
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
        result = prime * result + ((tipoJanela == null) ? 0 : tipoJanela.hashCode());
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
        CabineJanela other = (CabineJanela) obj;
        if (extra != other.extra)
            return false;
        if (tipoJanela != other.tipoJanela)
            return false;
        return true;
    }


    @Override
    public String toString() {
        return "Cabine com Janela " + tipoJanela + " " + super.toString() + "\n";
    }
}