package ExercicioB;

import java.util.ArrayList;

public class Livro extends EntPrincipal {
    
    private String iSBN;

    private ArrayList<String> autoresList = new ArrayList<>();

    public Livro(String titulo, String editora, String autores) {
        super(titulo, editora);
        autoresList.add(autores);
    }

    public Livro(String titulo, String editora, String autores, String iSBN) {
        super(titulo, editora);
        this.iSBN = iSBN;
        autoresList.add(autores);
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((autoresList == null) ? 0 : autoresList.hashCode());
        result = prime * result + ((iSBN == null) ? 0 : iSBN.hashCode());
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
        Livro other = (Livro) obj;
        if (autoresList == null) {
            if (other.autoresList != null)
                return false;
        } else if (!autoresList.equals(other.autoresList))
            return false;
        if (iSBN == null) {
            if (other.iSBN != null)
                return false;
        } else if (!iSBN.equals(other.iSBN))
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return String.format("%1s %1s%n", super.toString(), iSBN);
        StringBuilder sb = new StringBuilder();
        if (iSBN == null) {
            sb.append( "LIVRO " + super.toString() + " Autores: " +autoresList + "\n");
        } else {
            sb.append("LIVRO " + super.toString() + " ISBN: "+iSBN + " autores:" + autoresList +"\n");
        }
        return sb.toString();
    }    

}