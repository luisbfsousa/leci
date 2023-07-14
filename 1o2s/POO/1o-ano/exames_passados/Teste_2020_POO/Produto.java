package exames_passados.Teste_2020_POO;


public abstract class Produto implements PVP {
	private static int proximoCodigo = 1000;
	
	private String codigo;
	private int quantidade;
	private double preco;

	public Produto(String start, double preco) {
		this.codigo = start + String.valueOf(proximoCodigo);
		proximoCodigo += 2;
		
		this.quantidade = 0;
		this.preco = preco;
	}

	public abstract String getDescricao();

	public void setStock(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public void addStock(int quantidade) {
		this.quantidade += quantidade;
	}
	
	public boolean vender(int quantidade) {
		if (this.quantidade < quantidade)
			return false;
		
		this.quantidade -= quantidade;
		return true;
	}
	
	public int getStock() {
		return quantidade;
	}
	
	public double getPreco() {
		return this.preco;
	}
	
	public int compare(Produto p) {
		return this.codigo.compareTo(p.codigo);
	}
	
	public int compareDescs(Produto p) {
		return this.getDescricao().compareTo(p.getDescricao());
	}
	
	public String getCodigo() {
		return codigo;
	}
}
