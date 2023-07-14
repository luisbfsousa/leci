package exames_passados.POO2122;

public abstract class Activity {
    private int cost;
    
    public Activity(int cost) {
        this.cost = cost;
    }
    
    public int getCost() {
        return cost;
    }
    
    @Override
    public abstract String toString();
}