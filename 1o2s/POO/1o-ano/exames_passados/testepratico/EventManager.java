package exames_passados.testepratico;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class EventManager {

    private String name;
    private Map<Client, Set<Event>> eventosMap;

    public EventManager(String name) {
        this.name = name;
        this.eventosMap = new LinkedHashMap<>();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<Client, Set<Event>> getEventosMap() {
        return this.eventosMap;
    }

    public void setEventosMap(Map<Client, Set<Event>> eMap) {
        this.eventosMap = eMap;
    }

    public Client addClient(String nome, String localidade) {
        Client client = new Client(nome, localidade);
        for (Client c : this.eventosMap.keySet()) {
            if (client.equals(c)) return c;
        }
        this.eventosMap.put(client, new LinkedHashSet<>());
        return client;
    }

    public Event addEvent(Client client, LocalDate date) {
        Event event = new Event(date);
        this.eventosMap.get(client).add(event);
        return event;
    }

    public String listClients() {
        String str = "Clients:";
        for (Client c : eventosMap.keySet())
            str += "\n" + c;

        return str;
    }

    public String listEvents() {
        String str = "Events:";
        for (Client c : eventosMap.keySet()) {
            str += "\n" + c;
            for (Event e : eventosMap.get(c))
                str += "\n" + e;
        }

        return str;
    }

    public List<String> clientsWithEvents() {
        ArrayList<String> list = new ArrayList<>();
        for (Client c : eventosMap.keySet()) 
            if (eventosMap.get(c).size() > 0)
                list.add(c.toString());

        return list;
    }

    public List<String> nextEventsByDate() {
        TreeSet<Event> orderedSet = new TreeSet<Event>(Comparator.comparing(Event::getDate));
        for (Set<Event> conjEventos : eventosMap.values()) {
            for (Event e : conjEventos) {
                orderedSet.add(e);
            }
        }
        List<String> list = new ArrayList<>();
        orderedSet.forEach(e -> list.add(e.toString()));
        return list;
    }

    @Override
    public String toString() {
        return this.getName();
    }
    
}
