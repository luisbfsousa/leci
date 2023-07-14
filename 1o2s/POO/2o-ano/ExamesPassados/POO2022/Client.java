
public class Client {
    private String name;
    private String localidade;


    public Client(String name, String localidade) {
        this.name = name;
        this.localidade = localidade;
    }


    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocalidade() {
        return this.localidade;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }


    @Override
    public String toString() {
        return getName() + " [ " + getLocalidade() + " ] ";
    }
    
}
