package exames_passados.Teste_2020_POO;


public class Serie extends Produto {
	public static final int IVA = 23;
	
	private String titulo;
	private int ano;
	
	public Serie(double preco) {
		super("S", preco);
		// TODO Auto-generated constructor stub
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		// TODO Auto-generated method stub
		return titulo;
	}
}
