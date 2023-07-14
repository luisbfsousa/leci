public class Client {
    private int contribuinte;
    private String nome;
    private ClientType tipo;


    public Client(int contribuinte, String nome, ClientType tipo) {
        this.contribuinte = contribuinte;
        this.nome = nome;
        this.tipo = tipo;
    }

    public int getContribuinte() {
        return this.contribuinte;
    }

    public void setContribuinte(int contribuinte) {
        this.contribuinte = contribuinte;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ClientType getTipo() {
        return this.tipo;
    }

    public void setTipo(ClientType tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return this.nome + " [ " + this.tipo + " : " + this.contribuinte + " ] ";
    }


}
