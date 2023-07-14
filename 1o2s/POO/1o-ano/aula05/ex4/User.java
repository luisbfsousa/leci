package aula05.ex4;
import java.util.ArrayList;


public class User {
	private String name;
	private int nMec;
	private String course;
	private ArrayList<Integer> books;
	
	public User(String name, int nMec, String course) {
		this.name = name;
		this.nMec = nMec;
		this.course = course;
	}

	public String getName() {
		return name;
	}

	public int getnMec() {
		return nMec;
	}

	public String getCourse() {
		return course;
	}

	public ArrayList<Integer> getBooks() {
		return books;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setnMec(int nMec) {
		this.nMec = nMec;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public void addBook(int bookID) {
		if (this.books == null) {
			this.books = new ArrayList<Integer>();
		}
		this.books.add(bookID);
	}

	public void removeBook(int bookID) {
		if (this.books != null) {
			this.books.remove(this.books.indexOf(bookID));
		}
	}

	public boolean hasBook(int bookID) {
		if (this.books != null) {
			return this.books.contains(bookID);
		}
		return false;
	}

	public String toString() {
		return "Aluno: " + this.nMec + "; " + this.name + "; " + this.course;
	}
}
