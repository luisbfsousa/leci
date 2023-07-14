
import java.util.Set;
import java.util.TreeSet;

public class Telemovel extends Produto {
    private String marca;
    private String modelo;
    private Set<String> notas;

    public Telemovel(String marca, String modelo, double preco) {
        super(preco);
        this.marca = marca;
        this.modelo = modelo;
        this.notas = new TreeSet<>();
        setCodigo("T" + getNumParEste());
    }

    public void addNota(String nota) {
        notas.add(nota);
    }

    @Override
    public String getDescricao() {
        return String.format("%s/%s", marca.toUpperCase(), modelo);
    }

    @Override
    public String toString(){
        return String.format("Telemovel [%s %s - %s %s",getCodigo(),marca,modelo,notas);
    }

}
