package aula08.ex1;

public  class Taxi extends AutomovelLigeiro {
    private int licenca;
    
    public Taxi(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int capacidade, int licenca) {
        super(matricula, marca, modelo, potencia, numeroQuadro, capacidade);
        this.licenca = licenca;
    }
    public int getLicenca() {
        return licenca;
    }
    public void setLicenca(int licenca) {
        this.licenca = licenca;
    }
    @Override
    public String toString() {
        return "Taxi{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", capacidade=" + getCapacidade() + ", licenca=" + licenca + '}';
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
        final Taxi other = (Taxi) obj;
        return super.equals(obj) && this.getLicenca() == other.getLicenca();
    }
    
}
