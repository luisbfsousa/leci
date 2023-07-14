public class Servico {
    private String id;
    public static int num = 1000;

    public Servico(String tipo) {
        this.id = tipo + num;
        num++;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "{ id: " + getId() + "}";
    }
    
}
