package ExercicioC;

public class TestePC extends Teste implements InterfacePrazo {
    
    private String link;
    private int prazo;

    public TestePC(String nomeCadeira, String profResponsvel, String dataHora, String salas) {
        super(nomeCadeira, profResponsvel, dataHora);
    }


    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public void setPrazo(int p) {
        prazo = p;

    }

    @Override
    public int getPrazo() {
        return prazo;

    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((link == null) ? 0 : link.hashCode());
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
        TestePC other = (TestePC) obj;
        if (link == null) {
            if (other.link != null)
                return false;
        } else if (!link.equals(other.link))
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "TestePC [link=" + link + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("Teste PC  " + super.toString() + " Link: " +link );
        return sb.toString();
    }

    
    
}