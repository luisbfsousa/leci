package aula08.ex2;

public class Peixe extends Alimento {
    
    private TipoPeixe tipoPeixe;

    public Peixe(double proteinas, double calorias, double peso, TipoPeixe tipoPeixe) {
        super(proteinas, calorias, peso);
        this.tipoPeixe = tipoPeixe;
    }

    public TipoPeixe getTipoPeixe() {
        return tipoPeixe;
    }

    public void setTipoPeixe(TipoPeixe tipoPeixe) {
        this.tipoPeixe = tipoPeixe;
    }

    @Override
    public String toString() {
        return "Peixe{" + "tipoPeixe=" + tipoPeixe + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Peixe other = (Peixe) obj;
        return super.equals(obj) && this.getTipoPeixe() == other.getTipoPeixe();
    }

}
