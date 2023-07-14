import java.util.Arrays;
import java.util.Collection;
import java.util.TreeSet;

public class PasseioBicicleta extends Atividade {
    private Collection<String> locais;

    public PasseioBicicleta(int identificador, String nome, String[] locais) {
        super(identificador, nome);
        this.locais = new TreeSet<String>(Arrays.asList(locais));
    }

    public PasseioBicicleta(int identificador, String nome) {
        super(identificador, nome);
        this.locais = new TreeSet<>();
    }

    @Override
    public Collection<String> locais() {
        return locais;
    }

    public void addLocal(String local) {
        this.locais.add(local);
    }

    public Collection<String> getLocais() {
        return this.locais;
    }

    public void setLocais(Collection<String> locais) {
        this.locais = locais;
    }

}
