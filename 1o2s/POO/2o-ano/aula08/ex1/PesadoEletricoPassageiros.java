package aula08.ex1;

public class PesadoEletricoPassageiros extends PesadoPassageiros implements VeiculoEletrico {
    private int autonomiamax;
    private int carga = 100;
    
    public PesadoEletricoPassageiros(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int peso, int maxpassageiros, int autonomia, int carga) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso, maxpassageiros);
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
        return "PesadoEletricoPassageiros{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", peso=" + getPeso() + ", maxpassageiros=" + getMaxpassageiros() + ", autonomia_maxima=" + autonomiamax + ", carga=" + carga + '}';
    }
    @Override
    public boolean equals(Object obj ){
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final PesadoEletricoPassageiros other = (PesadoEletricoPassageiros) obj;
        return super.equals(obj) && this.getAutonomiaMaxima() == other.getAutonomiaMaxima() && this.getCarga() == other.getCarga();
    }
    
}
