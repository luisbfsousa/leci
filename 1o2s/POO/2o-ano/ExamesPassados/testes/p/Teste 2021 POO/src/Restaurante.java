public class Restaurante {
    private String nome;
    private TipoComida comida;

    public Restaurante(String nome, TipoComida comida) {
        this.nome = nome;
        this.comida = comida;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public TipoComida getComida() {
        return this.comida;
    }

    public void setComida(TipoComida comida) {
        this.comida = comida;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((comida == null) ? 0 : comida.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
        Restaurante other = (Restaurante) obj;
        if (comida != other.comida)
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return String.format("Restaurante [nome=%s, tipo=%s]", nome, comida);
    }

}
