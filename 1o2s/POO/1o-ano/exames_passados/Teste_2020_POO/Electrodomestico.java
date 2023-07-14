package exames_passados.Teste_2020_POO;


public class Electrodomestico extends Produto {
	public static final int IVA = 23;
	
	private String tipo;
	private String marca;
	private String modelo;
	private ClasseEnergetica classe;
	private double potencia;
	
	public Electrodomestico(String tipo, String marca, String modelo, double potencia, double preco) {
		super("E", preco);
		this.tipo = tipo;
		this.marca = marca;
		this.modelo = modelo;
		this.potencia = potencia;
	}
	
	public Electrodomestico(String tipo, String marca, String modelo, double preco) {
		super("E", preco);
		this.tipo = tipo;
		this.marca = marca;
		this.modelo = modelo;
	}

	public void setClasse(ClasseEnergetica classe) {
		this.classe = classe;
	}
	
	public ClasseEnergetica getClasse() {
		return this.classe;
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		return this.tipo+":"+this.marca+"/"+this.modelo;
	}

	@Override
	public String toString() {
		return "Electrodomestico ["+ this.getCodigo() + " " + tipo + " " + marca + " " + modelo + " " + classe
				+ " " + potencia + "]";
	}
}
