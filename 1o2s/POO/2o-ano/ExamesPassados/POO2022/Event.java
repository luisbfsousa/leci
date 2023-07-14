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

	public LocalDate getDate(LocalDate date){
        return this.date;
    }
    
    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Set<Activity> getActivites() {
        return this.activities;
    }

    public void setActivites(Set<Activity> activites) {
        this.activities = activites;
    }

    public Event AddActivity(Activity activity){
        if ((activity.getClass() == Catering.class) && hasCateringActivity())
            return this;

        activities.add(activity);
        return this;
    }

    private boolean hasCateringActivity() {
        for (Activity a : activities) 
            if (a.getClass().equals(Catering.class))
                return true;

        return false;
    }

    @Override
    public String toString() {
        String str = String.format("*** Evento em %s, total=%s euros", this.getDate(), this.totalPrice());
        for (Activity a : activities) {
            str += "\n" + a;
        }
        return str;
    }

    @Override
    public Event addActivity(Activity activity) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'addActivity'");
    }

    @Override
    public LocalDate getDate() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getDate'");
    }

    @Override
    public double totalPrice() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'totalPrice'");
    }



}
