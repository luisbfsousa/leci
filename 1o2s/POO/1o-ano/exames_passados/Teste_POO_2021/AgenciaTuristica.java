package exames_passados.Teste_POO_2021;

import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class AgenciaTuristica {

    private String nome;
    private String endereco;
    private Set<Atividade> atividades;

    public AgenciaTuristica(String nome, String endereco) {
        this.nome = nome;
        this.atividades = new HashSet<>();
    }

    public String getNome() { return this.nome; }
    public String getEndereco() { return this.endereco; }

    public void setNome(String nome) { this.nome = nome; }
    public void setEndereco(String endereco) { this.endereco = endereco; }

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

    public Set<Atividade> atividades() {
        return this.atividades;
    }

    public TreeSet<String> getAllItems() {
        TreeSet<String> locais = new TreeSet<>();
        for (Atividade a : this.atividades)
            for (String local : a.locais())
                locais.add(local);

        return locais;
    }

    @Override
    public String toString() {

        String str = String.format("Agencia Turistica %s", this.nome);
        str += String.format("\n\tAtividades: %s", this.atividades);

        return str;
    }
    
}
