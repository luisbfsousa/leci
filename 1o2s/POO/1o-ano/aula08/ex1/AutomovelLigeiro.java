package aula08.ex1;

public  class AutomovelLigeiro extends Automovel {
    private int capacidade;

    public AutomovelLigeiro(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int capacidade) {
        super(matricula, marca, modelo, potencia, numeroQuadro);
        this.capacidade = capacidade;
    }
    public int getCapacidade() {
        return capacidade;
    }
    public void setCapacidade(int capacidade) {
        this.capacidade = capacidade;
    }
    @Override
    public String toString() {
        return "AutomovelLigeiro{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", capacidade=" + capacidade + '}';
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
        final AutomovelLigeiro other = (AutomovelLigeiro) obj;
        return super.equals(obj) && this.getCapacidade() == other.getCapacidade();
    }

}