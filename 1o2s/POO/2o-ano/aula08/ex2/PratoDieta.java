package aula08.ex2;

public class PratoDieta extends Prato {

    private double limiteCalorias;

    public PratoDieta(String nome, double preco, double limiteCalorias) {
        super(nome);
        this.limiteCalorias = limiteCalorias;
    }

    public double getLimiteCalorias() {
        return limiteCalorias;
    }

    public void setLimiteCalorias(double limiteCalorias) {
        this.limiteCalorias = limiteCalorias;
    }

    @Override
    public boolean addAlimento(Alimento alimento) {
        double calorias = 0;
        for (Alimento a : this.getAlimentos()) {
            calorias += a.getCalorias();
        }
        if (this.getLimiteCalorias() <= calorias + alimento.getCalorias()) {
            return super.addAlimento(alimento);
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return super.toString() + "Limite de calorias: " + limiteCalorias;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        PratoDieta other = (PratoDieta) obj;
        return super.equals(obj) && this.getLimiteCalorias() == other.getLimiteCalorias();
    }

}

