package exames_passados.Teste_2020_POO;


import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

public class Loja {
	private String nome;
	private String enderecoWeb;
	private TreeSet<Produto> produtos;
	
	public Loja(String nome, String enderecoWeb) {
		super();
		this.nome = nome;
		this.enderecoWeb = enderecoWeb;
		this.produtos = new TreeSet<Produto>(Produto::compare);
	}
	
	public int totalItems() {
		int total = 0;
		for(Produto p: produtos)
			total += p.getStock();
		return total;
	}
	
	public void add(Produto produto) {
		produtos.add(produto);
	}
	
	public Produto getProdutoPelaDescricao(String descricao) {
		for (Produto p: produtos)
			if (p.getDescricao().equals(descricao))
				return p;
		return null;
	}
	
	public List<Produto> produtosPrecoFinalSuperiorA(double preco) {
		List<Produto> products = new ArrayList<Produto>();
		
		for (Produto p: produtos)
			if (p.precoVendaAoPublico() > preco)
				products.add(p);
		
		return products;
	}
	
	public List<Electrodomestico> electrodomesticosClasseX(String classe) {
		List<Electrodomestico> eletrodomesticos = new ArrayList<Electrodomestico>();
		Electrodomestico e;
		
		for (Produto p: produtos) {
			if (p instanceof Electrodomestico) {
				e = (Electrodomestico) p;
				if (e.getClasse() == ClasseEnergetica.valueOf(classe))
					eletrodomesticos.add(e);
			}	
		}
		
		return eletrodomesticos;
	}
	
	public void reorder() {
		TreeSet<Produto> temp = new TreeSet<Produto>(Produto::compareDescs);
		temp.addAll(this.produtos);
		this.produtos = temp;
	}

	@Override
	public String toString() {
		String desc = nome + "\n";
		desc += String.format("%10s %-30s %10s %10s\n", "C�digo", "Produto", "Em Stock", "PVP");
		
		for (Produto p: produtos)
			desc += String.format("%10s %-30s %10d %10.2f\n", p.getCodigo(), p.getDescricao(), p.getStock(), p.getPreco());
		
		return desc;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEnderecoWeb() {
		return enderecoWeb;
	}

	public void setEnderecoWeb(String enderecoWeb) {
		this.enderecoWeb = enderecoWeb;
	}
	
	
}
