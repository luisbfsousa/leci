package exames_passados.Teste_2020_POO;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class Livro extends Produto {
	public static final int IVA = 6;
	
	private String titulo;
	private Set<Autor> autores;
	
	public Livro(String titulo, double preco) {
		super("L", preco);
		this.titulo = titulo;
		
		this.autores = new TreeSet<Autor>();
	}
	
	public Livro(String titulo, double preco, List<Autor> autores) {
		super("L", preco);
		this.titulo = titulo;
		
		this.autores = new TreeSet<Autor>(Autor::compare);
		this.autores.addAll(autores);
	}
	
	public void add(Autor autor) {
		this.autores.add(autor);
	}
	
	public Set<Autor> autores() {
		return autores;
	}

	public String getTitulo() {
		return titulo;
	}

	public Set<Autor> getLista() {
		return autores;
	}
	
	public int numeroAutores() {
		return autores.size();
	}

	@Override
	public double precoVendaAoPublico() {
		return this.getPreco()*(1+IVA/100);
	}

	@Override
	public String getDescricao() {
		return this.getTitulo();
	}
}
