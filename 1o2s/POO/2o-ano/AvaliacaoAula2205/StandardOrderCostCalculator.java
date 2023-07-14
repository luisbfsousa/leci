public class StandardOrderCostCalculator implements OrderCostCalculator {
    
    @Override
    public double calculateOrderCost(Order order){
        Double price = order.getPrice();
        double cost;
        if(price == order.getPrice()){
            cost = price;
            return cost;
        }else{
            cost = price;
            cost += cost * 0.3;
            return cost;
        }
    }
}
