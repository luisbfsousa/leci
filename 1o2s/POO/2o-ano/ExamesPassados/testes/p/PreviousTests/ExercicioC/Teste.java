package ExercicioC;

import java.util.ArrayList;

public abstract class Teste {

    private String nomeCadeira, profResponsvel, dataHora;

    private ArrayList<String> salasList = new ArrayList<>();

    public Teste(String nomeCadeira, String profResponsvel, String dataHora) {
        this.nomeCadeira = nomeCadeira;
        this.profResponsvel = profResponsvel;
        this.dataHora = dataHora;
    }

    public void addSala(String s) {
        salasList.add(s);
    }

    public String getNomeCadeira() {
        return nomeCadeira;
    }

    public void setNomeCadeira(String nomeCadeira) {
        this.nomeCadeira = nomeCadeira;
    }

    public String getProfResponsvel() {
        return profResponsvel;
    }

    public void setProfResponsvel(String profResponsvel) {
        this.profResponsvel = profResponsvel;
    }

    public String getDataHora() {
        return dataHora;
    }

    public void setDataHora(String dataHora) {
        this.dataHora = dataHora;
    }

    public ArrayList<String> getSalasList() {
        return salasList;
    }

    public void setSalasList(ArrayList<String> salasList) {
        this.salasList = salasList;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((dataHora == null) ? 0 : dataHora.hashCode());
        result = prime * result + ((nomeCadeira == null) ? 0 : nomeCadeira.hashCode());
        result = prime * result + ((profResponsvel == null) ? 0 : profResponsvel.hashCode());
        result = prime * result + ((salasList == null) ? 0 : salasList.hashCode());
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
        Teste other = (Teste) obj;
        if (dataHora == null) {
            if (other.dataHora != null)
                return false;
        } else if (!dataHora.equals(other.dataHora))
            return false;
        if (nomeCadeira == null) {
            if (other.nomeCadeira != null)
                return false;
        } else if (!nomeCadeira.equals(other.nomeCadeira))
            return false;
        if (profResponsvel == null) {
            if (other.profResponsvel != null)
                return false;
        } else if (!profResponsvel.equals(other.profResponsvel))
            return false;
        if (salasList == null) {
            if (other.salasList != null)
                return false;
        } else if (!salasList.equals(other.salasList))
            return false;
        return true;
    }

    @Override
    public String toString() {
        // return "Teste [dataHora=" + dataHora + ", nomeCadeira=" + nomeCadeira + ",
        // profResponsvel=" + profResponsvel
        // + ", salasList=" + salasList + "]";
        StringBuilder sb = new StringBuilder();
        sb.append("CADEIRA: " + nomeCadeira + ", Prof. Responsvel: " + profResponsvel + ", Data: " + dataHora + " Sala/as: " + salasList);
        return sb.toString();
    }

}