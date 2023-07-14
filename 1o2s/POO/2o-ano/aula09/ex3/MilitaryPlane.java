package aula09.ex3;

public class MilitaryPlane extends Plane {
    private int numMissiles;
    private String id;
    private String manufacturer;
    private String model;
    private int year;
    private int maxPassengers;
    private double maxSpeed;



    public MilitaryPlane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed, int numMissiles) {
        //super(id, manufacturer, model, year, maxPassengers, maxSpeed);
        this.numMissiles = numMissiles;
    }

    public void setNumMissiles(int numMissiles) {
        this.numMissiles = numMissiles;
    }

    public int getNumMissiles() {
        return numMissiles;
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