import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class RandomTicketTester {
    public static void main(String[] args) {

        RandomTickets tickets = new RandomTickets();

        List<Person> r = new ArrayList<Person>();
        r.add(new Person("Maria", 34317245, new DateYMD(12, 1, 2000)));
        r.add(new Person("Carlos", 36331424, new DateYMD(1, 10, 2003)));
        r.add(new Person("Marta", 35940012, new DateYMD(31, 3, 2002)));
        r.add(new Person("Sofia", 34765901, new DateYMD(14, 7, 2000)));
        r.add(new Person("Tiago", 35006531, new DateYMD(3, 6, 2001)));

        try{
            File file = new File("AulaPratica2022\\Lista_festivais.txt");
            Scanner input = new Scanner(file);
            input.nextLine(); // Skip the header line
        
            while ((input).hasNextLine()) {
                String line = input.nextLine();
                String[] parts = line.split("\t"); // Split the line using tab delimiter
                String festival = parts[2].trim();
                int seat = Integer.parseInt(parts[4].trim());
                tickets.addTicket(new Ticket(festival, seat));
            }
            input.close();

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }
        
        for (int i = 0; i < 2 * r.size(); i++) {
            int ri = (int) (Math.random() * r.size());
            tickets.getRandomTicket(r.get(ri));
        }

        tickets.listPersons(r);
        r.stream().forEach(person -> System.out.println(person.getNome()));
        tickets.listAvailableTickets();
    }
}
