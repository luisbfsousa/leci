import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class EventManager {
    private String name;
    private Map<Client, Set<Event>> MapasEvento;

    public EventManager(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public Map<Client,Set<Event>> getMapasEvento() {
        return this.MapasEvento;
    }

    public void setMapasEvento(Map<Client,Set<Event>> MapasEvento) {
        this.MapasEvento = MapasEvento;
    }


    @Override
    public String toString() {
        return this.getName();
    }

    public Event addEvent(Client client, LocalDate date) {
        Event event = new Event(date);
        this.MapasEvento.get(client).add(event);
        return event;
    }

    public Client addClient(String nome, String localidade) {
        Client client = new Client(nome, localidade);
        for (Client c : this.MapasEvento.keySet()) {
            if (client.equals(c)) return c;
        }
        this.MapasEvento.put(client, new LinkedHashSet<>());
        return client;
    }

    public String listClients() {
       String string = "clients";
       for (Client c : MapasEvento.keySet()){
            string = "\n" + c;
            
       }
    return string;

    }

    public String listEvents() {
        String str = "Events:";
        for (Client c : MapasEvento.keySet()) {
            str += "\n" + c;
            for (Event e : MapasEvento.get(c))
                str += "\n" + e;
        }

        return str;
    }

  
}
