public class RoteiroCultural extends Servico {
    private String nome;
    private int locais;

    public RoteiroCultural(String nome, int locais) {
        super("R");
        this.nome = nome;
        this.locais = locais;
    }


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getLocais() {
        return this.locais;
    }

    public void setLocais(int locais) {
        this.locais = locais;
    }

    @Override
    public String toString() {
        return "{ nome. " + getNome() + ", locais. " + getLocais() + "}";
    }

}
