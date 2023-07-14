import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Set;

public class Event implements IEvent {

    private LocalDate date;
    private Set<Activity> activities;

    public Event(LocalDate date) {
        this.date = date;
        this.activities = new LinkedHashSet<>();
    }

    public LocalDate getDate() { return this.date; }
    public void setDate(LocalDate date) { this.date = date; }

    public Set<Activity> getActivities() { return this.activities; }

    public Event addActivity(Activity activity) {
        if ((activity.getClass() == Catering.class) && hasCateringActivity())
            return this;

        activities.add(activity);
        return this;
    }

    public double totalPrice() {
        double total = 0.0;
        for (Activity a : activities) 
            total += a.getPrice() * a.getParticipants();
        return total;
    }

    private boolean hasCateringActivity() {
        for (Activity a : activities) 
            if (a.getClass().equals(Catering.class))
                return true;

        return false;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Event other = (Event) obj;
        return this.getDate().equals(other.getDate()) && this.getActivities().equals(other.getActivities());
    }

    @Override
    public String toString() {
        String str = String.format("*** Evento em %s, total=%s euros", this.getDate(), this.totalPrice());
        for (Activity a : activities) {
            str += "\n" + a;
        }
        return str;
    }
    
}
