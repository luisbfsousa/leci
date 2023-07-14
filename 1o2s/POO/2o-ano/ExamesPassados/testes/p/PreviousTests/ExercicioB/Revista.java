package ExercicioB;

public class Revista extends EntPrincipal implements Periodo {
    
    private String iSSN;
    private Periodicidade periodicidade;

    public Revista(String titulo, String editora, String iSSN) {
        super(titulo, editora);
        this.iSSN = iSSN;
    }

    public String getiSSN() {
        return iSSN;
    }

    public void setiSSN(String iSSN) {
        this.iSSN = iSSN;
    }

    @Override
    public void setPeriodicidade(Periodicidade p) {
        periodicidade = p;
    }

    public Periodicidade getPeriodicidade() {
        return periodicidade;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((iSSN == null) ? 0 : iSSN.hashCode());
        result = prime * result + ((periodicidade == null) ? 0 : periodicidade.hashCode());
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
        Revista other = (Revista) obj;
        if (iSSN == null) {
            if (other.iSSN != null)
                return false;
        } else if (!iSSN.equals(other.iSSN))
            return false;
        if (periodicidade != other.periodicidade)
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return String.format("%1s %1s %1s%n", super.toString(), iSSN, periodicidade);
        StringBuilder sb = new StringBuilder();
        if (periodicidade == null) {
            sb.append("REVISTA " + super.toString() + " ISSN: " + iSSN + "\n");
        } else {
            sb.append("REVISTA " + super.toString() + " ISSN: " + iSSN + " Periodicidade: " + periodicidade + "\n");
        }
        return sb.toString();
    }
    
}