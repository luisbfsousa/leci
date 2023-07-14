import java.util.List;
import java.util.Set;

public class AgenciaTuristica {
    private String nome;
    private String morada;
    private Set<PacoteTuristico> pacotes; //SET porque nao pode ser repetido
    private List<Reserva> reservas;  //Lista de reservas


    public AgenciaTuristica(String nome, String morada, Set<PacoteTuristico> pacotes, List<Reserva> reservas) {
        this.nome = nome;
        this.morada = morada;
        this.pacotes = pacotes;
        this.reservas = reservas;
    }


    public AgenciaTuristica(String string, String string2) {
    }


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMorada() {
        return this.morada;
    }

    public void setMorada(String morada) {
        this.morada = morada;
    }

    public Set<PacoteTuristico> getPacotes() {
        return this.pacotes;
    }

    public void setPacotes(Set<PacoteTuristico> pacotes) {
        this.pacotes = pacotes;
    }

    public List<Reserva> getReservas() {
        return this.reservas;
    }

    public void setReservas(List<Reserva> reservas) {
        this.reservas = reservas;
    }


    public void reserva(PacoteTuristico pacote, int numeroPessoas) {
        if (pacotes.contains(pacote)) {
            Reserva reserva = new Reserva(pacote, numeroPessoas);
            reservas.add(reserva);
        } else {
            System.out.println("O pacote turístico não está disponível.");
        }
    }


    public String listaPacotes() {
        StringBuilder sb = new StringBuilder();
        sb.append("Pacotes Turísticos Disponíveis:\n");
        for (PacoteTuristico pacote : pacotes) {
            sb.append("- ").append(pacote.toString()).append("\n");
        }
        return sb.toString();
    }


    public String listaReservas() {
        StringBuilder sb = new StringBuilder();
        sb.append("Reservas Efetuadas:\n");
        for (Reserva reserva : reservas) {
            sb.append("- Pacote: ").append(reserva.getPacote().toString());
            sb.append(" | Número de Pessoas: ").append(reserva.getPessoas());
            sb.append(" | Preço Total: ").append(reserva.getPrecoTotal()).append("\n");
        }
        return sb.toString();
    }


    public PacoteTuristico pacoteTuristico(String string, int i, int j) {
        return null;
    }


    public PacoteTuristico[] pacotesPorPreco(int i) {
        return null;
    }


    public Reserva[] reservasPorPreco() {
        return null;
    }


}
