public abstract class Produto implements PVP, Comparable<Produto> {
    private String codigo;
    private int quantidade;
    private double preco;
    private int stock = 1;
    private static int numPar = 1000;
    private int numParEste;

    protected Produto(String codigo, int quantidade, double preco) {
        this(preco);
        this.codigo = codigo;
        this.quantidade = quantidade;
    }

    protected Produto(double preco) {
        this.preco = preco;
        numParEste = numPar;
        numPar += 2;
    }

    public int compareTo(Produto p) {
        return codigo.compareTo(p.codigo);
    }

    @Override
    public double precoVendaAoPublico() {
        return preco * 1.23;
    }

    public void addStock(int s) {
        this.stock += s;
    }

    public boolean vender(int num) {
        if (this.stock >= num) {
            this.setStock(this.getStock() - num);
            return true;
        }
        return false;
    }

    public String getDescricao() {
        return null;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getStock() {
        return this.stock;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public static int getNumPar() {
        return numPar;
    }

    public static void setNumPar(int numPar) {
        Produto.numPar = numPar;
    }

    public int getNumParEste() {
        return numParEste;
    }

    public void setNumParEste(int numParEste) {
        this.numParEste = numParEste;
    }

}
