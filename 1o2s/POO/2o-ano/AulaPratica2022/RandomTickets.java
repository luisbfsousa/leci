import java.util.ArrayList;
import java.util.List;

class RandomTickets {
    private List<Ticket> tickets = new ArrayList<Ticket>();

    public void addTicket(Ticket ticket) {
        tickets.add(ticket);
    }

    public Ticket getRandomTicket(Person person) {
        int ri = (int) (Math.random() * tickets.size());
        return tickets.get(ri);
    }

    public void listPersons(List<Person> persons) {
        for (Person person : persons) {
            System.out.println(person);
        }
    }

    public void listAvailableTickets() {
        for (Ticket ticket : tickets) {
            System.out.println(ticket);
        }
    }
}