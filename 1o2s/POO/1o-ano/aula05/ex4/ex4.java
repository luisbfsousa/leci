package aula05.ex4;
import java.util.ArrayList;

public class ex4 {
	public static void main(String[] args) {
		Book catalog[] = new Book[10];
		catalog[0] = new Book("Java 8", "CONDICIONAL");
		catalog[1] = new Book("POO em Java 8");
		catalog[2] = new Book("Java para totós", "NORMAL");

		System.out.println("ID = " + catalog[1].getId() + ", " + catalog[1].getTitle());
		catalog[2].setTypeLoan("CONDICIONAL");

		for (int i = 0; i < catalog.length; i++) {
			if (catalog[i] != null) System.out.println(catalog[i]);
		}

		ArrayList<User> users = new ArrayList<>();

		users.add(new User("Catarina Marques", 80232, "MIEGI"));
		users.add(new User("Joao Silva", 90123, "LEI"));
		users.get(1).setnMec(80123);
		
		for (User u : users) {
			System.out.println(u);
		}

	}
}
