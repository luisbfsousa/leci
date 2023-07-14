public class standardShippingCostCalculator implements ShippingCostCalculator {



    @Override
    public double calculateShippingCost(Package pkg) {
        double weight = pkg.getWeight();
        double cost;
        if(weight < 5.0){
            cost = weight;
            return cost;
        }else if(weight <= 10.0 && weight >= 5.0){
            cost = weight * 2.0;
            return cost;
        }else{
            cost = weight * 3.0;
            return cost;
        }
    }


}
