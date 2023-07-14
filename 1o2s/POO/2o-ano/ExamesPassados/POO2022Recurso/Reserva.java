public class Reserva {
    private int pessoas;
    private PacoteTuristico pacote;

    public Reserva(PacoteTuristico pacote, int pessoas) {
        this.pessoas = pessoas;
        this.pacote = pacote;
    }

    public int getPessoas() {
        return this.pessoas;
    }

    public void setPessoas(int pessoas) {
        this.pessoas = pessoas;
    }

    public PacoteTuristico getPacote() {
        return this.pacote;
    }

    public void setPacote(PacoteTuristico pacote) {
        this.pacote = pacote;
    }

    public int getPrecoTotal() {
        return pacote.precoTotal(pessoas);
    }

}
