import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Gastronomia extends Atividade {
    private List<Restaurante> restaurantes;

    public Gastronomia(int numero, String nome) {
        super(numero, nome);
        this.restaurantes = new ArrayList<>();
    }

    public Gastronomia(int numero, String nome, List<Restaurante> restaurantes) {
        super(numero, nome);
        this.restaurantes = restaurantes;
    }

    @Override
    public Collection<String> locais() {
        Collection<String> c = new ArrayList<>();
        for (Restaurante r : restaurantes) {
            c.add(r.toString());
        }
        return c;
    }

    public void add(Restaurante r) {
        restaurantes.add(r);
    }

    public int totalRestaurantes() {
        return restaurantes.size();
    }

    public List<Restaurante> getLista() {
        return this.restaurantes;
    }

    public void setRestaurantes(List<Restaurante> restaurantes) {
        this.restaurantes = restaurantes;
    }

}
