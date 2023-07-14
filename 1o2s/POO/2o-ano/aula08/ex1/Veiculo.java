package aula08.ex1;

public abstract class Veiculo implements KmPercorridos {
    private String matricula;
    private String marca;
    private String modelo;
    private int potencia;

    private int ultimoTrajeto = 0;
    private int distanciaTotal = 0;

    public Veiculo(String matricula, String marca, String modelo, int potencia) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
    }
    public String getMatricula() {
        return matricula;
    }
    
    public String getMarca() {
        return marca;
    }
    public String getModelo() {
        return modelo;
    }
    public int getPotencia() {
        return potencia;
    }
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    public void setMarca(String marca) {
        this.marca = marca;
    }
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }
    public void trajeto(int quilometros) {
        System.out.println("O veículo " + this.getMarca() + " " + this.getModelo() + " com matrícula " + this.getMatricula() + " percorreu " + quilometros + " quilómetros.");
        this.ultimoTrajeto = quilometros;
        this.distanciaTotal += quilometros;
    }
    public int ultimoTrajeto() {
        return this.ultimoTrajeto;
    }
    public int distanciaTotal() {
        return this.distanciaTotal;
    }
    @Override
    public String toString() {
        return "Veiculo{" + "matricula=" + matricula + ", marca=" + marca + ", modelo=" + modelo + ", potencia=" + potencia + '}';
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
        final Veiculo other = (Veiculo) obj;
        return this.matricula.equals(other.getMatricula()) &&
                this.getMarca().equals(other.getMarca()) &&
                this.getModelo().equals(other.getModelo()) &&
                this.getPotencia() == other.getPotencia();

    }
}