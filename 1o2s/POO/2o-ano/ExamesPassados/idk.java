import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

enum ClientType {
    NORMAL, MEMBER
}

enum SpaceType {
    CARAVAN, CAR, TENT
}

class Client {
    private long id;
    private String name;
    private ClientType type;

    public Client(long id, String name, ClientType type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public ClientType getType() {
        return type;
    }

    @Override
    public String toString() {
        return name;
    }
}

abstract class CampingSpace {
    private String location;
    private int[] dimensions;
    private double price;

    public CampingSpace(String location, int[] dimensions, double price) {
        this.location = location;
        this.dimensions = dimensions;
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public int[] getDimensions() {
        return dimensions;
    }

    public double getPrice() {
        return price;
    }

    public abstract SpaceType getType();

    @Override
    public String toString() {
        return String.format("%s (%dx%d) - €%.2f", getType(), dimensions[0], dimensions[1], price);
    }
}

class CaravanSpace extends CampingSpace {
    public CaravanSpace(String location, int[] dimensions, double price) {
        super(location, dimensions, price);
    }

    @Override
    public SpaceType getType() {
        return SpaceType.CARAVAN;
    }
}

class CarSpace extends CampingSpace {
    public CarSpace(String location, int[] dimensions, double price) {
        super(location, dimensions, price);
    }

    @Override
    public SpaceType getType() {
        return SpaceType.CAR;
    }
}