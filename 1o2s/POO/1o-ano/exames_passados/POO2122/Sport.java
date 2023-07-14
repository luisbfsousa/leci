package exames_passados.POO2122;

public class Sport extends Activity {
    public enum Modality {
        HIKING, KAYAK
    }
    
    private Modality modality;
    
    public Sport(Modality modality, int cost) {
        super(cost);
        this.modality = modality;
    }
    
    @Override
    public String toString() {
        return "Sport - Modality: " + modality + ", Cost: " + getCost();
    }
}