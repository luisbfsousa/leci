package aula08.ex2;

public class Alimento {

    private double proteinas;
    private double calorias;
    private double peso;

    public Alimento(double proteinas, double calorias, double peso) {
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    public double getProteinas() {
        return proteinas;
    }

    public double getCalorias() {
        return calorias;
    }

    public double getPeso() {
        return peso;
    }

    public void setProteinas(double proteinas) {
        this.proteinas = proteinas;
    }

    public void setCalorias(double calorias) {
        this.calorias = calorias;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    @Override
    public String toString() {
        return "Alimento{" + "proteinas=" + proteinas + ", calorias=" + calorias + ", peso=" + peso + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Alimento other = (Alimento) obj;
        return getProteinas() == other.getProteinas() &&
                getCalorias() == other.getCalorias() &&
                getPeso() == other.getPeso();
    }

}