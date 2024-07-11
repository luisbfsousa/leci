public abstract class Local {
    protected String nome;

    public Local(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public String toString() {
        return nome;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Local local = (Local) obj;
        return nome.equals(local.nome);
    }

    @Override
    public int hashCode() {
        return nome.hashCode();
    }
}