public class Client {
    
    private String name;
    private String localidade;
    
    public Client(String name, String localidade) {
        this.name = name;
        this.localidade = localidade;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocalidade() {
        return localidade;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Client other = (Client) obj;
        return this.getName().equals(other.getName()) && this.getLocalidade().equals(other.getLocalidade());
    }

    @Override
    public String toString() {
        return String.format("%s [%s]", this.getName(), this.getLocalidade());
    }

}
