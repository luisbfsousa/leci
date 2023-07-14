package exames_passados.Teste_POO_2021;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Gastronomia extends Atividade {

    private List<Restaurante> restaurantes;

    public Gastronomia(int id, String nome) {
        super(id, nome);
        this.restaurantes = new ArrayList<>();
    }

    public Gastronomia(int id, String nome, List<Restaurante> restaurantes) {
        this(id, nome);
        this.restaurantes = restaurantes;
    }

    public List<Restaurante> getLista() {
        return this.restaurantes;
    }

    public void setLista(List<Restaurante> restaurantes) {
        this.restaurantes = restaurantes;
    }

    public void add(Restaurante r) {
        this.restaurantes.add(r);
    }

    public int totalRestaurantes() {
        return this.restaurantes.size();
    }

    public Collection<String> locais() {
        Collection<String> locais = new ArrayList<>();
        for (Restaurante r : this.restaurantes) {
            locais.add(r.toString());
        }
        return locais;
    }
    
}
