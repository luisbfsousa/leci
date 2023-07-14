package exames_passados.POO2122;

public class Client {
    private String name;
    private String address;
    
    public Client(String name, String address) {
        this.name = name;
        this.address = address;
    }
    
    @Override
    public String toString() {
        return "Name: " + name + ", Address: " + address;
    }
}