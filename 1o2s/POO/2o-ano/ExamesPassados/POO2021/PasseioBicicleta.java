
import java.util.Collection;
import java.util.Set;
import java.util.TreeSet;

public class PasseioBicicleta extends Atividade {
    private Set<String> locais;

    public PasseioBicicleta(int id, String nome){
        super(id,nome);
        this.locais = new TreeSet<>();
    }

    public PasseioBicicleta(int id,String nome,String[] locais){
        super(id,nome);

        Set<String> l = new TreeSet<>();
        for(String s : locais){
            l.add(s);
        }this.locais = l;
    }

    public Set<String> getLocais() {
        return this.locais;
    }

    public void setLocais(Set<String> locais) {
        this.locais = locais;
    }

    public Collection<String> locais(){
        return this.locais;
    }

    public void addLocal(String local){
        this.locais.add(local);
    }




}
