package exames_passados.POO2122;

public class Catering extends Activity {
    public enum Option {
        FULL_MENU, DRINKS_AND_SNACKS, LIGHT_BITES
    }
    
    private Option option;
    
    public Catering(Option option, int cost) {
        super(cost);
        this.option = option;
    }
    
    @Override
    public String toString() {
        return "" + option + " - Cost: " + getCost();
    }
}
