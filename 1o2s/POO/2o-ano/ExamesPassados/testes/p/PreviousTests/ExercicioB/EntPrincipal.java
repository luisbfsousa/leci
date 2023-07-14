package ExercicioB;

public abstract class EntPrincipal {

    private String  titulo, editora;

    public EntPrincipal(String titulo, String editora) {
        this.titulo = titulo;
        this.editora = editora;
    }

    public EntPrincipal(String titulo) {
        this.titulo = titulo;
	}

	public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((editora == null) ? 0 : editora.hashCode());
        result = prime * result + ((titulo == null) ? 0 : titulo.hashCode());
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
        EntPrincipal other = (EntPrincipal) obj;
        if (editora == null) {
            if (other.editora != null)
                return false;
        } else if (!editora.equals(other.editora))
            return false;
        if (titulo == null) {
            if (other.titulo != null)
                return false;
        } else if (!titulo.equals(other.titulo))
            return false;
        return true;
    }

    @Override
    public String toString() {
        //return String.format("%1s %2s", titulo, editora);
        StringBuilder sb = new StringBuilder();
        if (editora ==  null) {
            sb.append("Título: " + titulo + " ");
        } else {
            sb.append("Título: " + titulo + " Editora: " + editora + " ");
        }
        return sb.toString();
    }
    
}