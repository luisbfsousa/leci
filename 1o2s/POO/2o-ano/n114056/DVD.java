package n114056;

public class DVD extends LibraryItem {
    private int duration;
    
    public DVD(String title, int duration) {
        super(title);
        this.duration = duration;
    }
    
    public int getDuration() {
        return this.duration;
    }
    
    @Override
    public String toString() {
        return super.toString() + ", Duration: " + this.duration;
    }
    
    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        
        if (!(o instanceof DVD)) {
            return false;
        }
        
        DVD dvd = (DVD) o;
        
        return super.equals(dvd) && dvd.getDuration() == this.duration;
    }
    
    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.duration;
        return result;
    }
}