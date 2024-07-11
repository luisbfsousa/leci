import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AgenciaCultural implements Listavel {
    private String nome;
    private String endereco;
    private List<Percurso> percursos;
    private int count;

    public AgenciaCultural(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
        this.percursos = new ArrayList<>();
    }

    public void add(Percurso percurso) {
        if (!percursos.contains(percurso)) {
            percursos.add(percurso);
        }
    }

    public int totalSitiosCulturais() {
        for (Percurso percurso : percursos) {
            for (Local local : percurso.getLocais()) {
                if (local instanceof SitioCultural) {
                    count++;
                }
            }
        }
        return count;
    }

    @Override
    public Collection<String> percursos() {
        List<String> percursoNomes = new ArrayList<>();
        for (Percurso percurso : percursos) {
            percursoNomes.add(percurso.getNome());
        }
        return percursoNomes;
    }

    @Override
    public String toString() {
        return "Agencia Cultural " + nome + ": " + percursos.size() + " percursos disponiveis";
    }

    public void addPercurso(String nomeP, int precoP, String tipoTransporte) {
        // TODO Auto-generated method stub
    }

    public void addSitioCultural(String nomeS, String tipoS, String tipoComida) {
        // TODO Auto-generated method stub
    }

    public void addRestaurante(String nomeR, String tipoComida) {
        // TODO Auto-generated method stub
    }
}


