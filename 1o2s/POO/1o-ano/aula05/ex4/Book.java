package aula05.ex4;

public class Book {
	private static int idCount = 100;
	private int id;
	private String title;
	private String typeLoan;
	private boolean loaned;

	public Book(String title, String typeLoan) {
		this.id = idCount++;
		this.title = title;
		this.typeLoan = typeLoan;
	}

	public Book(String title) {
		this.id = idCount++;
		this.title = title;
		this.typeLoan = "NORMAL";
	}

	public int getId() {
		return this.id;
	}

	public String getTitle() {
		return this.title;
	}

	public String getTypeLoan() {
		return this.typeLoan;
	}

	public boolean isLoaned() {
		if (this.typeLoan.equalsIgnoreCase("CONDICIONAL")) return true;
		return this.loaned;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setTypeLoan(String typeLoan) {
		this.typeLoan = typeLoan;
	}

	public void setLoaned(boolean loaned) {
		this.loaned = loaned;
	}

	public String toString() {
		return "Livro " + this.id + "; " + this.title + "; " + this.typeLoan;
	}

}
