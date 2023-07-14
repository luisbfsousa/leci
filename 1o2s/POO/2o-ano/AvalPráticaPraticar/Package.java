package AvalPráticaPraticar;
import java.util.Objects;

public class Package {
    private static int current_id = 0;
    private int id;
    private double kg;
    private String destination;
    private String sender;

    public Package(double kg, String destination, String sender) {
        this.id = Package.current_id++;
        this.kg = kg;
        this.destination = destination;
        this.sender = sender;
    }

    public int getID() {
        return this.id;
    }

    public double getKg() {
        return this.kg;
    }

    public void setKg(double kg) {
        if (kg <= 0) {
            throw new IllegalArgumentException("Weight must be positive!");
        } else {
        this.kg = kg;
        }
    }

    public String getDestination() {
        return this.destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getSender() {
        return this.sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public Package kg(double kg) {
        setKg(kg);
        return this;
    }

    public Package destination(String destination) {
        setDestination(destination);
        return this;
    }

    public Package sender(String sender) {
        setSender(sender);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Package)) {
            return false;
        }
        Package pkg = (Package) o;
        return kg == pkg.kg && Objects.equals(destination, pkg.destination) && Objects.equals(sender, pkg.sender);
    }

    @Override
    public int hashCode() {
        return Objects.hash(kg, destination, sender);
    }

    @Override
    public String toString() {
        return String.format("Package %i\nWeight: %d\nDestination: %s\nSender: %s", getID(), getKg(), getDestination(), getSender());
    }
}