package ExercicioC;

public class ExameEscrito extends Teste implements InterfacePrazo {
    
    private int nVersoes, prazo;
    private Consulta consulta; 


    public ExameEscrito(String nomeCadeira, String profResponsvel, String dataHora, String salas, int nVersoes) {
        super(nomeCadeira, profResponsvel, dataHora);
        addSala(salas);
        this.nVersoes = nVersoes;
        consulta = Consulta.FALSE;
    }

    public ExameEscrito(String nomeCadeira, String profResponsvel, String dataHora, String salas) {
        super(nomeCadeira, profResponsvel, dataHora);
        addSala(salas);
        nVersoes = 1;
        consulta = Consulta.FALSE;
    }


    public int getnVersoes() {
        return nVersoes;
    }

    public void setnVersoes(int nVersoes) {
        this.nVersoes = nVersoes;
    }

    public Consulta getConsulta() {
        return consulta;
    }

    public void setConsulta(Consulta consulta) {
        this.consulta = consulta;
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
        result = prime * result + ((consulta == null) ? 0 : consulta.hashCode());
        result = prime * result + nVersoes;
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
        ExameEscrito other = (ExameEscrito) obj;
        if (consulta != other.consulta)
            return false;
        if (nVersoes != other.nVersoes)
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return "ExameEscrito [consulta=" + consulta + ", nVersoes=" + nVersoes + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("Exame Escrito  " + super.toString() + " Consulta: " + consulta + ", Nº Versões: " + nVersoes);
        return sb.toString();
    }
    
}