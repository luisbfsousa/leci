
import java.util.ArrayList;
import java.util.TreeSet;

public class AgenciaTuristica {
    private String nome;
    private TreeSet<PacoteTuristico> pacotes;
    private ArrayList<Reserva> reservas;
    private String endereço;

    public AgenciaTuristica(String nome, String endereço, TreeSet<PacoteTuristico> pacotes,ArrayList<Reserva> reservas) {
        this.nome = nome;
        this.endereço = endereço;
        this.pacotes = pacotes;
        this.reservas = reservas;
    }

    public AgenciaTuristica(String string, String string2) {
        //por fazer
    }

    public String getNome() {
        return nome;
    }

    public String getEndereço() {
        return endereço;
    }

    public TreeSet<PacoteTuristico> getPacotes() {
        return pacotes;
    }

    public ArrayList<Reserva> getClientes() {
        return reservas;
    }

    public void setClientes(ArrayList<Reserva> clientes) {
        this.reservas = clientes;
    }

    public void adicionaPacote(PacoteTuristico pacote) {
        pacotes.add(pacote);
    }

    public void adicionaReserva(Reserva reserva) {
        reservas.add(reserva);
    }

    public String toString() {
        return "Agencia: " + nome + " - " + endereço;
    }

    public void listaPacotes() {
        for (PacoteTuristico pacote : pacotes) {
            System.out.println(pacote);
        }
    }

    public void listaReservas() {
        for (Reserva cliente : reservas) {
            System.out.println(cliente);
        }
    }

    public PacoteTuristico pacoteTuristico(String string, int i, int j) {
        return null;
    }

    public void reserva(PacoteTuristico p1, int i) {
    }

    public PacoteTuristico[] pacotesPorPreco(int i) {
        return null;
    }

    public Reserva[] reservasPorPreco() {
        return null;
    }
}
