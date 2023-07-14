package ExercicioD;

public class Cereais extends Alimento {
    
    private ComposiçãoCereais compCereais;

    public Cereais(String nome, String dataValidade, int calorias100Gramas, double preço,
            ComposiçãoCereais compCereais) {
        super(nome, dataValidade, calorias100Gramas, preço);
        this.compCereais = compCereais;
    }

    public Cereais(String nome,double preço,int calorias100Gramas, String dataValidade) {
        super(nome, dataValidade, calorias100Gramas, preço);
    }

    public ComposiçãoCereais getCompCereais() {
        return compCereais;
    }

    public void setCompCereais(ComposiçãoCereais compCereais) {
        this.compCereais = compCereais;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((compCereais == null) ? 0 : compCereais.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        if (getClass() != obj.getClass())
            return false;
        Cereais other = (Cereais) obj;
        if (compCereais != other.compCereais)
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "Cereais [compCereais=" + compCereais + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("CEREAL " + super.toString() + " Comp Cereal: " + compCereais);
        return sb.toString();
    }
    
    

    
}