package ExercicioD;

public abstract class Alimento {
    
    private String nome, dataValidade;
    private int calorias100Gramas;
    private double preço;

    public Alimento(String nome, String dataValidade, int calorias100Gramas, double preço) {
        this.nome = nome;
        this.dataValidade = dataValidade;
        this.calorias100Gramas = calorias100Gramas;
        this.preço = preço;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + calorias100Gramas;
        result = prime * result + ((dataValidade == null) ? 0 : dataValidade.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        long temp;
        temp = Double.doubleToLongBits(preço);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Alimento other = (Alimento) obj;
        if (calorias100Gramas != other.calorias100Gramas)
            return false;
        if (dataValidade == null) {
            if (other.dataValidade != null)
                return false;
        } else if (!dataValidade.equals(other.dataValidade))
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (Double.doubleToLongBits(preço) != Double.doubleToLongBits(other.preço))
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "Alimento [calorias100Gramas=" + calorias100Gramas + ", dataValidade=" + dataValidade + ", nome=" + nome + ", preço=" + preço + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("Nome: " + nome + " Preço: " + preço + " Calorias: " + calorias100Gramas + " Data: " + dataValidade);
        return sb.toString();
    }

    
    
}