package ExercicioC;

public class ProvaOral extends Teste {
    
    private Lingua lingua;

    public ProvaOral(String nomeCadeira, String profResponsvel, String dataHora,String salas, Lingua lingua) {
        super(nomeCadeira, profResponsvel, dataHora);
        addSala(salas);
        this.lingua = lingua;
    }

    public Lingua getLingua() {
        return lingua;
    }

    public void setLingua(Lingua lingua) {
        this.lingua = lingua;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((lingua == null) ? 0 : lingua.hashCode());
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
        ProvaOral other = (ProvaOral) obj;
        if (lingua != other.lingua)
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "ProvaOral [lingua=" + lingua + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("Prova Oral " + super.toString() + "Lingua: " + lingua);
        return sb.toString();
    }

    
    
    
}