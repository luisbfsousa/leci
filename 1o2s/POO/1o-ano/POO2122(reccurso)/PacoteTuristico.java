import java.util.ArrayList;
import java.util.List;

public abstract class PacoteTuristico {
    private String nome;
    private int numeroPessoas;
    private int preco;
    private List<Servico> servicos;
    private List<Reserva> reservas;

    public PacoteTuristico(String nome, int numeroPessoas, int preco) {
        this.nome = nome;
        this.numeroPessoas = numeroPessoas;
        this.preco = preco;
        this.servicos = new ArrayList<Servico>();
        this.reservas = new ArrayList<Reserva>();
    }

    public String getNome() {
        return nome;
    }

    public int getNumeroPessoas() {
        return numeroPessoas;
    }

    public int getPreco() {
        return preco;
    }

    public List<Servico> getServicos() {
        return servicos;
    }

    public List<Reserva> getReservas() {
        return reservas;
    }

    public void adicionaServico(Servico servico) {
        servicos.add(servico);
    }

    public void adicionaReserva(Reserva reserva) {
        reservas.add(reserva);
    }

    

    public String toString() {
        return "Pacote: " + nome + " - " + numeroPessoas + " pessoas - " + preco + "€";
    }

}
