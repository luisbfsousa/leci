package exames_passados.Teste_2020_POO;


import java.util.HashSet;
import java.util.Set;

public class Telemovel extends Produto {
	public static final int IVA = 23;
	
	private String marca;
	private String modelo;
	private Set<String> notas;
	
	public Telemovel(String marca, String modelo, double preco) {
		super("T", preco);
		this.marca = marca;
		this.modelo = modelo;
		
		notas = new HashSet<String>();
	}
	
	public void addNota(String nota) {
		notas.add(nota);
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		// TODO Auto-generated method stub
		return this.marca+"/"+this.modelo;
	}

	@Override
	public String toString() {
		return "Telemovel [" + marca + " " + modelo + " " + notas + "]";
	}
}
