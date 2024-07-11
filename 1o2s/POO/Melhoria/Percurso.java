import java.util.ArrayList;
import java.util.List;

public class Percurso {
    private String nome;
    private int duracao;
    private Transporte transporte;
    private List<Local> locais;

    public Percurso(String nome, int duracao, Transporte transporte) {
        this.nome = nome;
        this.duracao = duracao;
        this.transporte = transporte;
        this.locais = new ArrayList<>();
    }

    public Percurso(String nome, int duracao, Transporte transporte, List<Local> locais) {
        this.nome = nome;
        this.duracao = duracao;
        this.transporte = transporte;
        this.locais = new ArrayList<>(locais);
    }

    public String getNome() {
        return nome;
    }

    public int getDuracao() {
        return duracao;
    }

    public Transporte getTransporte() {
        return transporte;
    }

    public List<Local> getLocais() {
        return locais;
    }

    public void add(Local local) {
        if (!locais.contains(local)) {
            locais.add(local);
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Percurso ").append(nome)
          .append(", preco=").append(duracao).append("€/pessoa, em ")
          .append(transporte).append(": ");

        for (int i = 0; i < locais.size(); i++) {
            Local local = locais.get(i);
            if (local instanceof SitioCultural) {
                sb.append(local.getNome());
            } else if (local instanceof Restaurante) {
                Restaurante restaurante = (Restaurante) local;
                sb.append(local.getNome()).append(", Comida ").append(restaurante.getTipo());
            }
            if (i < locais.size() - 1) {
                sb.append(" -> ");
            }
        }
        return sb.toString();
    }
}

enum Transporte {
    AUTOCARRO, TODOTERRENO, BICICLETA
}

