public abstract class Activity {
    private int participantes;
    private double preco;

    protected Activity(int participantes) {
        this.participantes = participantes;
    }

    public int getParticipantes() {
        return participantes;
    }

    public void setParticipantes(int participantes) {
        this.participantes = participantes;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(int preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "Activity [participantes=" + participantes + ", preco=" + preco + "]";
    }
}
