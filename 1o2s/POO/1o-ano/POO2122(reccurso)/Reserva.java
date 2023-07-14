public class Reserva {
    private PacoteTuristico pacote;
    private int pessoas;
    public Reserva(PacoteTuristico pacote, int pessoas){
        this.pacote = pacote;
        this.pessoas = pessoas;
    }
    public PacoteTuristico getPacote() {
        return pacote;
    }
    public int getPessoas() {
        return pessoas;
    }
    public String toString() {
        return "Reserva: " + pacote + " - " + pessoas + " pessoas";
    }

}
