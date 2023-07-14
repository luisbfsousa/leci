package aula08.ex1;

public class AutomovelEletricoLigeiro extends AutomovelLigeiro implements VeiculoEletrico {
    private int autonomiamax;
    private int carga = 100;
    
    public AutomovelEletricoLigeiro(String matricula, String marca, String modelo, int potenciaCv, int numeroDoQuadro, int capacidadeDaBagageira, int autonomia, int carga) {
        super(matricula, marca, modelo, potenciaCv, numeroDoQuadro, capacidadeDaBagageira);
        this.autonomiamax = autonomia;
        this.carga = carga;
    }
   
    public int getAutonomiaMaxima() {
        return autonomiamax;
    }
    public int autonomia() {
        return this.autonomiamax*(carga/100);
    }
    public void carregar(int percentagem) {
        this.carga += percentagem;
        if (this.carga > 100)this.carga = 100;   
    }
    public int getCarga() {
        return carga;
    }
    @Override
    public String toString() {
        return "AutomovelLigeiroEletrico{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", capacidade=" + getCapacidade() + ", autonomia_maxima=" + autonomiamax + ", carga=" + carga + '}';
    }
    @Override
    public boolean equals(Object obj){
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final AutomovelEletricoLigeiro other = (AutomovelEletricoLigeiro) obj;
        return super.equals(obj) && this.getAutonomiaMaxima() == other.getAutonomiaMaxima() && this.getCarga() == other.getCarga();
    }
    
}
