
import java.util.ArrayList;
import java.util.List;

public class Gastronomia extends Atividade {
    private List<Restaurante> restaurantes;

    public Gastronomia(int id, String nome){
        super(id, nome);
        this.restaurantes = new ArrayList <>();
    }

    public Gastronomia(int id, String nome, List<Restaurante> restaurante){
        this(id,nome);
        this.restaurantes = restaurantes;
    }

    public List<Restaurante> getRestaurantes() {
        return this.restaurantes;
    }

    public void setRestaurantes(List<Restaurante> restaurantes) {
        this.restaurantes = restaurantes;
    }


    @Override
    public String toString() {
        return "{ restaurantes: " + getRestaurantes() + "}";
    }

    public void add(Restaurante restaurante) {
        this.restaurantes.add(restaurante);
    }

    public List<Restaurante> getLista() {
        return this.restaurantes;
    }

    public int totalRestaurantes() {
        return this.restaurantes.size();
    }

    
}
