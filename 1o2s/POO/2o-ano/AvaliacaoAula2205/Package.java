import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Package {
    private List<Order> orders;

    public Package() {
        this.orders = new ArrayList<>();
    }

    public void addOrder(Order order) {
        orders.add(order);
    }

    public void removeOrder(int id) {
        Order orderToRemove = null;
        for (Order order : orders) {
            if (order.getId() == id) {
                orderToRemove = order;
                break;
            }
        }
        if (orderToRemove != null) {
            orders.remove(orderToRemove);
            System.out.println("Order Removed");
        } else {
            System.out.println("Order not found");
        }
    }

    public Order findOrder(int id) {
        for (Order order : orders) {
            if (order.getId() == id) {
                return order;
            }
        }
        return null;
    }

    public void saveOrder() {
        try (FileWriter writer = new FileWriter("NovosPedidos.txt")) {
            for (Order order : orders) {
                writer.write(order.toString());
                writer.write(System.lineSeparator());
            }
            System.out.println("Orders saved");
        } catch (IOException e) {
            System.out.println("Error " + e.getMessage());
        }
    }

    public void calculatePrice() {
        double totalPrice = 0.0;
        for (Order order : orders) {
            totalPrice += order.getPrice();
        }
        System.out.println("Total Price: " + totalPrice);
    }

    public void calculatePriceMonth() {
    }

    public void printOrder() {
        for (Order order : orders) {
            System.out.println(order);
        }
    }

}
