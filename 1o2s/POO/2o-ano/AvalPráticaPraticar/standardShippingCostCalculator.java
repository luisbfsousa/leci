package AvalPráticaPraticar;

public class standardShippingCostCalculator implements shippingCostCalculator {
    
    @Override
    public double calculateShippingCost(Package pkg){
        Double weight = pkg.getKg();
        double cost;
        if (weight < 5) {
            cost = weight * 1;
        } else if (weight >= 5 && weight < 10) {
            cost = weight * 2;
        } else {
            cost = weight * 3;
        } return cost;
    }
}