import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class AgenciaTuristica {
    private String nome;
    private String endereco;
    private Set<Atividade> atividades;

    public AgenciaTuristica(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
        this.atividades = new HashSet<>();
    }

    public void add(Atividade a) {
        atividades.add(a);
    }

    public int totalItems() {
        int siz = 0;
        for (Atividade a : atividades) {
            siz += a.locais().size();
        }
        return siz;
    }

    public Set<Atividade> atividades() {
        return atividades;
    }

    public Set<String> getAllItems() {
        Set<String> lista = new TreeSet<>();
        for (Atividade a : atividades){
            for (String s : a.locais()){
                lista.add(s);
            }
        }
        return lista;
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

    public AgenciaTuristica nome(String nome) {
        setNome(nome);
        return this;
    }

    public AgenciaTuristica endereco(String endereco) {
        setEndereco(endereco);
        return this;
    }

    public AgenciaTuristica atividades(Set<Atividade> atividades) {
        setAtividades(atividades);
        return this;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((atividades == null) ? 0 : atividades.hashCode());
        result = prime * result + ((endereco == null) ? 0 : endereco.hashCode());
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        AgenciaTuristica other = (AgenciaTuristica) obj;
        if (atividades == null) {
            if (other.atividades != null)
                return false;
        } else if (!atividades.equals(other.atividades))
            return false;
        if (endereco == null) {
            if (other.endereco != null)
                return false;
        } else if (!endereco.equals(other.endereco))
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    @Override
    public String toString() {
        StringBuilder stb = new StringBuilder();
        stb.append(String.format("Agencia Turistica %s\n\tAtividades: ", nome));

        stb.append(atividades);
        return stb.toString();
    }

}
