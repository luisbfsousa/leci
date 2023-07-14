import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class Loja {
    private String nome;
    private String address;
    private Set<Produto> produtosEmStock;

    public Loja(String nome, String address) {
        this.nome = nome;
        this.address = address;
        produtosEmStock = new TreeSet<>();
    }

    public int totalItems() {
        int sum = 0;
        for (Produto produto : produtosEmStock) {
            sum += produto.getStock();
        }
        return sum;
    }

    public void add(Produto p) {
        produtosEmStock.add(p);
    }

    public Produto getProdutoPelaDescricao(String s) {
        for (Produto produto : produtosEmStock) {
            if (produto.getDescricao().equals(s)) {
                return produto;
            }
        }
        Produto p = new Livro("asdasd", 1);
        return p;
    }

    public void reorder() {
        List<Produto> arr = new ArrayList<>(produtosEmStock);
        Collections.sort(arr,
                (o1, o2) -> o1.getDescricao().compareTo(o2.getDescricao()));
        produtosEmStock = new TreeSet<>(arr);
    }

    public List<Produto> produtosPrecoFinalSuperiorA(double preco) {
        List<Produto> productos = new ArrayList<>();
        for (Produto x : produtosEmStock) {
            if (x.precoVendaAoPublico() > preco) {
                productos.add(x);
            }
        }
        return productos;
    }

    public List<Produto> electrodomesticosClasseX(String cl) {
        List<Produto> listEletro = new ArrayList<>();
        for (Produto x : produtosEmStock) {
            if (x instanceof Electrodomestico) {
                if (((Electrodomestico) (x)).getClasse().name().equals(cl)) {
                    listEletro.add(x);
                }
            }
        }
        return listEletro;
    }

    @Override
    public String toString() {
        StringBuilder stb = new StringBuilder();
        stb.append("Loja " + nome + "\n" + "Código Produto" + "\tEm Stock\tPVP\n");

        for (Produto produto : produtosEmStock) {
            stb.append(String.format(" %s %s\t%d\t%.2f\n", produto.getCodigo(), produto.getDescricao(),
                    produto.getStock(), produto.precoVendaAoPublico()));
        }
        return stb.toString();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}
