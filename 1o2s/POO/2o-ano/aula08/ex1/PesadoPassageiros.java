package aula08.ex1;

public class PesadoPassageiros extends Pesado {
    private int maxpassageiros;

    public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int peso, int maxpassageiros) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso);
        this.maxpassageiros = maxpassageiros;
    }
    public int getMaxpassageiros() {
        return maxpassageiros;
    }
    public void setMaxpassageiros(int maxpassageiros) {
        this.maxpassageiros = maxpassageiros;
    }
    @Override
    public String toString() {
        return "PesadoPassageiros{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", peso=" + getPeso() + ", maxpassageiros=" + maxpassageiros + '}';
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
        final PesadoPassageiros other = (PesadoPassageiros) obj;
        return super.equals(obj) && this.getMaxpassageiros() == other.getMaxpassageiros();
    }
    
}
