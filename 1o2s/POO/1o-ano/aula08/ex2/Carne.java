package aula08.ex2;

public class Carne extends Alimento {

    private TipoCarne TipoCarne;

    public Carne(double proteinas, double calorias, double peso, TipoCarne TipoCarne) {
        super(proteinas, calorias, peso);
        this.TipoCarne = TipoCarne;
    }

    public TipoCarne getTipoCarne() {
        return TipoCarne;
    }

    public void setTipoCarne(TipoCarne TipoCarne) {
        this.TipoCarne = TipoCarne;
    }

    @Override
    public String toString() {
        return "Carne{" + "TipoCarne=" + TipoCarne + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Carne other = (Carne) obj;
        return super.equals(obj) && this.getTipoCarne() == other.getTipoCarne();
    }

}