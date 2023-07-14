package aula08.ex1;

public  class PesadoMercadorias extends Pesado {
    private int cargamax;

    public PesadoMercadorias(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int peso, int cargamax) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso);
        this.cargamax = cargamax;
    }
    public int getCargamax() {
        return cargamax;
    }
    public void setCargamax(int cargamax) {
        this.cargamax = cargamax;
    }
    @Override
    public String toString() {
        return "PesadoMercadorias{" + "matricula"+ getMatricula() + ", marca=" + getMarca() + ", modelo=" + getModelo() + ", potencia=" + getPotencia() + ", numeroQuadro=" + getNumeroQuadro() + ", peso=" + getPeso() + ", cargamax=" + cargamax + '}';
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
        final PesadoMercadorias other = (PesadoMercadorias) obj;
        return super.equals(obj) && this.getCargamax() == other.getCargamax();
    }
    
}
