public class Organizacao {
    private String telefone;

    public Organizacao(String telefone) {
        this.telefone = telefone;
    }

    public String getTelefone() {
        return this.telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Organizacao telefone(String telefone) {
        setTelefone(telefone);
        return this;
    }

    @Override
    public String toString() {
        return "{" +
            " telefone='" + getTelefone() + "'" +
            "}";
    }

}
