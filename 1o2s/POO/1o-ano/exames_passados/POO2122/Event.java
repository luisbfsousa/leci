package exames_passados.POO2122;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Event {
    private Client client;
    private LocalDate date;
    private List<Activity> activities;
    
    public Event(Client client, LocalDate date) {
        this.client = client;
        this.date = date;
        this.activities = new ArrayList<>();
    }
    
    public Event addActivity(Activity activity) {
        activities.add(activity);
        return this;
    }
    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Client: ").append(client).append(", Date: ").append(date).append("\n");
        sb.append("Activities:\n");
        for (Activity a : activities) {
            sb.append(a).append("\n");
        }
        return sb.toString();
    }

    public Event addActivity(Culture culture) {
        return null;
    }

    public Object getClientName() {
        return null;
    }
}