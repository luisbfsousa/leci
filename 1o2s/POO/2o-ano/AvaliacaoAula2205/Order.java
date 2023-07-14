import java.time.LocalDateTime;

public class Order {
    private int id;
    private double price;
    private String storeId;
    private String clientId;
    private LocalDateTime orderDateTime;


    public Order(int id, double price, String storeId, String clientId, LocalDateTime orderDateTime) {
        this.id = id;
        this.price = price;
        this.storeId = storeId;
        this.clientId = clientId;
        this.orderDateTime = orderDateTime;
    }

    public int getId() {
        return id;
    }

    public double getPrice() {
        return price;
    }

    public String getStoreId() {
        return storeId;
    }

    public String getClientId() {
        return clientId;
    }

    public LocalDateTime getOrderDateTime() {
        return orderDateTime;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public void setOrderDateTime(LocalDateTime orderDateTime) {
        this.orderDateTime = orderDateTime;
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", price=" + price + ", storeId='" + storeId + '\'' + ", clientId='" + clientId + '\'' + ", orderDateTime=" + orderDateTime + '}';
    }

}