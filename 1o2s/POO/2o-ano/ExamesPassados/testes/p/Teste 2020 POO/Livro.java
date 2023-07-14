import java.util.Collection;
import java.util.TreeSet;

public class Livro extends Produto {
    private String titulo;
    private Collection<Autor> lista;

    public Livro(String titulo, double preco) {
        super(preco);
        this.titulo = titulo;
        this.lista = new TreeSet<>();
        setCodigo("L" + getNumParEste());
    }

    public Livro(String titulo, double preco, Collection<Autor> lista) {
        super(preco);
        this.titulo = titulo;
        this.lista = lista;
        setCodigo("L" + getNumParEste());
    }

    public void add(Autor a) {
        lista.add(a);
    }
    @Override
    public String getDescricao(){
        return titulo;
    }

    @Override
    public double precoVendaAoPublico() {
        return getPreco() * 1.06;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Collection<Autor> getLista() {
        return lista;
    }

    public void setlista(Collection<Autor> lista) {
        this.lista = lista;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((lista == null) ? 0 : lista.hashCode());
        result = prime * result + ((titulo == null) ? 0 : titulo.hashCode());
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
        Livro other = (Livro) obj;
        if (lista == null) {
            if (other.lista != null)
                return false;
        } else if (!lista.equals(other.lista))
            return false;
        if (titulo == null) {
            if (other.titulo != null)
                return false;
        } else if (!titulo.equals(other.titulo))
            return false;
        return true;
    }

    public int numeroAutores() {
        return lista.size();
    }

    public String autores() {
        return lista.toString();
    }

}
