
import java.util.Collection;

public class Atividade implements PontosdeInteresse {
    private int id;
    private String nome;

    public Atividade(int id, String nome){
        this.id = id;
        this.nome = nome;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    @Override
    public String toString() {
        return "{ id: " + getId() +", nome: " + getNome() + "}";
    }

    @Override
    public Collection<String> locais() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'locais'");
    }
    

}
