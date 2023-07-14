package exames_passados.Teste_2020_POO;

public class Autor implements Comparable {
	private String nome;
	private int anoNascimento;
	
	public Autor(String nome, int anoNascimento) {
		super();
		this.nome = nome;
		this.anoNascimento = anoNascimento;
	}
	
	public String getNome() {
		return this.nome;
	}
	
	public int getAnoNascimento() {
		return this.anoNascimento;
	}

	public int compare(Autor a) {
		return this.nome.compareTo(a.nome);
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return this.anoNascimento;
	}

	@Override
	public String toString() {
		return nome + " (" + anoNascimento + "-)";
	}
}
