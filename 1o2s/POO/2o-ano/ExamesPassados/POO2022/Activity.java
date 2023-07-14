public class Activity {
    private int participantes;
    private double price;


    public Activity(int participantes, double price) {
        this.participantes = participantes;
        this.price = price;
    }


    public int getParticipantes() {
        return this.participantes;
    }

    public void setParticipantes(int participantes) {
        this.participantes = participantes;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
}
