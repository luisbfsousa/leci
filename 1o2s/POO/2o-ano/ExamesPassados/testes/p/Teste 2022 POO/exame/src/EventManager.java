import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class EventManager {
    private String nome;
    private Map<Client, List<Event>> lista;

    public EventManager(String nome) {
        this.nome = nome;
        lista = new LinkedHashMap<>();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Client addClient(String nome, String localidade) {
        Client c = new Client(nome, localidade);
        if (lista.containsKey(c)) {
            return null;
        }
        lista.put(c, new ArrayList<>());
        return c;
    }

    public List<String> clientsWithEvents() {
        List<String> ls = new ArrayList<>();
        for (Client cl : lista.keySet()) {
            ls.add(cl.toString());
        }
        return ls;
    }

    public List<String> nextEventsByDate() {
        List<String> result = new ArrayList<>();
        List<Event> eventosTotais = new ArrayList<>();
        for (List<Event> listaEventosTotal : lista.values()) {
            for (Event e : listaEventosTotal) {
                eventosTotais.add(e);
            }
        }
        eventosTotais.sort(Comparator.comparing(Event::getData));
        for (Event event : eventosTotais) {
            result.add(event.toString());
        }
        return result;
    }

    public Event addEvent(Client client, LocalDate data) {
        // ver se o cliente ja tem algum evento previo na mesma data
        boolean pode = true;
        for (Event e : lista.get(client)) {
            if (e.getData().equals(data)) {
                pode = false;
            }
        }
        if (pode) {
            List<Event> eventos = new ArrayList<>();
            Event e = new Event(data);
            eventos.add(e);
            if (lista.putIfAbsent(client, eventos) != null) {
                lista.get(client).add(e);
            }
            return e;
        }
        return null;
    }

    public String listClients() {
        StringBuilder stb = new StringBuilder();
        for (Client c : lista.keySet()) {
            stb.append(c.toString() + "\n");
        }
        return stb.toString();
    }

    public String listEvents() {
        StringBuilder stb = new StringBuilder("Events:\n");
        for (Map.Entry<Client, List<Event>> entry : lista.entrySet()) {
            Client key = entry.getKey();
            List<Event> value = entry.getValue();
            stb.append(key.toString() + "\n");
            for (Event v : value) {
                stb.append(String.format("*** Evento em %s, total=%d euros\n", v.getDate(), (int) (v.totalPrice())));
                for (Activity a : v.getAtividades()) {
                    stb.append(String.format("\t%s\n", a));
                }
            }
        }
        return stb.toString();
    }

    @Override
    public String toString() {
        return nome;
    }
}
