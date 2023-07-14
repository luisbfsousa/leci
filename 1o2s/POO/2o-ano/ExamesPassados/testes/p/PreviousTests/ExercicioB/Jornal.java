package ExercicioB;

public class Jornal extends EntPrincipal implements Periodo {

    private Cor cor;
    private Periodicidade periodicidade;

    public Jornal(String titulo, String editora) {
        super(titulo, editora);
    }

    public Jornal(String titulo, Cor cor) {
        super(titulo);
        this.cor = cor;
    }

    public Jornal(String titulo) {
        super(titulo);
    }

    @Override
    public void setPeriodicidade(Periodicidade p) {
        periodicidade = p;
    }

    public Cor getCor() {
        return cor;
    }

    public void setCor(Cor cor) {
        this.cor = cor;
    }

    public Periodicidade getPeriodicidade() {
        return periodicidade;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((cor == null) ? 0 : cor.hashCode());
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
        Jornal other = (Jornal) obj;
        if (cor != other.cor)
            return false;
        if (periodicidade != other.periodicidade)
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return String.format("%1s %1s %1s%n", super.toString(), cor, periodicidade);
        StringBuilder sb = new StringBuilder();
        if (cor == null) {
            sb.append("JORNAL " + super.toString() + periodicidade + "\n");
        } else {
            if (periodicidade == null) {
                sb.append("JORNAL " + super.toString() + " Cor: " + cor + "\n");
                
            } else {
                sb.append("JORNAL " +super.toString() + " Cor: " + cor + " Periodicidade: " + periodicidade + "\n");
            }
        }
        return sb.toString();
        
    }

    
    
}