
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AgenciaTuristica {
    private String nome;
    public String endereco;
    private Set<Atividade> atividades;

    public AgenciaTuristica(String nome, String endereco){
        this.nome = nome;
        this.endereco = endereco;
        this.atividades = new HashSet<>();
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return this.endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public Set<Atividade> getAtividades() {
        return this.atividades;
    }

    public void setAtividades(Set<Atividade> atividades) {
        this.atividades = atividades;
    }


    @Override
    public String toString() {
        return "{ nome: " + getNome() + ", endereco: " + getEndereco() + ", atividades: " + getAtividades() + "}";
    }

    public void add(Atividade atividade) {
        this.atividades.add(atividade);
    }

    public int totalItems() {
        int count = 0;
        for (Atividade a : this.atividades) {
            count += a.locais().size();
        }
        return count;
    }

    public Atividade[] atividades() {
        return null;
    }

    public List<String> getAllItems() {
        List<String> aux = new ArrayList<String>();
        for (Atividade a : atividades) {
            for (String s : a.locais()) {
                aux.add(s);
            }
        }
        return aux;
    }

    

}
