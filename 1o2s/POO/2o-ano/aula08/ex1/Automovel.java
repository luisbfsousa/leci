package aula08.ex1;

public abstract class Automovel extends Veiculo {
    private int numeroQuadro;

    public Automovel(String matricula, String marca, String modelo, int potencia, int numeroQuadro) {
        super(matricula, marca, modelo, potencia);
        this.numeroQuadro = numeroQuadro;
    }
    public int getNumeroQuadro() {
        return numeroQuadro;
    }
    public void setNumeroQuadro(int numeroQuadro) {
        this.numeroQuadro = numeroQuadro;
    }
    @Override
    public String toString() {
        return "Automovel{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + numeroQuadro + '}';
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
        final Automovel other = (Automovel) obj;
        return super.equals(obj) && this.getNumeroQuadro() == other.getNumeroQuadro();
    }
}
