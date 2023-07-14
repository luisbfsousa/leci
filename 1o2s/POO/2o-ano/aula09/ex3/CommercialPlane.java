package aula09.ex3;

public class CommercialPlane extends Plane {
    private int numOfCrewMembers;
    private String id;
    private String manufacturer;
    private String model;
    private int year;
    private int maxPassengers;
    private double maxSpeed;

    public CommercialPlane(String id, String manufacturer, String model, int year, int maxNumOfPassengers, double maxSpeed, int numOfCrewMembers) {
        //super(id, manufacturer, model, year, maxNumOfPassengers, maxSpeed);
        this.numOfCrewMembers = numOfCrewMembers;
    }
    
    public void setnumOfCrewMembers(int numOfCrewMembers) {
        this.numOfCrewMembers = numOfCrewMembers;   
    }

    public int getnumOfCrewMembers() {
        return numOfCrewMembers;
    }

    public void setid(String id) {
        this.id = id;
    }

    public String id() {
        return id;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String manufacturer() {
        return manufacturer;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String model() {
        return model;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int year() {
        return year;
    }

    public void setMaxPassengers(int maxPassengers) {
        this.maxPassengers = maxPassengers;
    }

    public int maxPassengers() {
        return maxPassengers;
    }

    public void setMaxSpeed(double maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    public double maxSpeed() {
        return maxSpeed;
    }
}
