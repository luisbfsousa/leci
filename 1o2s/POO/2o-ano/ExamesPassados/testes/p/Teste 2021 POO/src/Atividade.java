import java.util.Collection;

public abstract class Atividade implements PontosDeInteresse {
    private int identificador;
    private String nome;

    public Atividade(int identificador, String nome) {
        this.identificador = identificador;
        this.nome = nome;
    }

    @Override
    public Collection<String> locais() {
        return null;
    }

    public int getIdentificador() {
        return this.identificador;
    }

    public void setIdentificador(int identificador) {
        this.identificador = identificador;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Atividade identificador(int identificador) {
        setIdentificador(identificador);
        return this;
    }

    public Atividade nome(String nome) {
        setNome(nome);
        return this;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + identificador;
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
        Atividade other = (Atividade) obj;
        if (identificador != other.identificador)
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
        return String.format("Atividade [num=%d, nome=%s]", identificador, nome);
    }

}
