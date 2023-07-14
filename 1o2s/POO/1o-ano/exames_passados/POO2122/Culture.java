package exames_passados.POO2122;

public class Culture {
    public enum Option {
        ARCHITECTURAL_TOUR, RIVER_TOUR, ART_MUSEUM, WINE_TASTING
    }
    
    private Option option;
    private int cost;
    
    public Culture(Option option, int cost) {
        this.option = option;
        this.cost = cost;
    }
    
    public Option getOption() {
        return option;
    }
    
    public int getCost() {
        return cost;
    }
}
