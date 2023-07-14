package exames_passados.POO2122;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class EventManager {
    private List<Client> clients;
    private List<Event> events;
    
    public EventManager(String name) {
        this.clients = new ArrayList<>();
        this.events = new ArrayList<>();
    }
    
    public Client addClient(String name, String address) {
        Client client = new Client(name, address);
        clients.add(client);
        return client;
    }
    
    public Event addEvent(Client client, LocalDate date) {
        Event event = new Event(client, date);
        events.add(event);
        return event;
    }
    
    public String listClients() {
        StringBuilder sb = new StringBuilder();
        sb.append("Clients:\n");
        for (Client c : clients) {
            sb.append(c).append("\n");
        }
        return sb.toString();
    }
    
    public String listEvents() {
        StringBuilder sb = new StringBuilder();
        sb.append("Events:\n");
        for (Event e : events) {
            sb.append(e).append("\n");
        }
        return sb.toString();
    }

    public String[] clientsWithEvents() {
        List<String> clients = new ArrayList<>();
        for (Event event : events) {
            if (!clients.contains(event.getClientName())) {
                clients.add((String) event.getClientName());
            }
        }
        return clients.toArray(new String[0]);
    }

    public String[] nextEventsByDate() {
        return null;
    }
}