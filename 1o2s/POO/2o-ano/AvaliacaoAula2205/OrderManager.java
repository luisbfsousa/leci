import java.io.File;
import java.io.FileNotFoundException;
import java.time.LocalDateTime;
import java.util.Scanner;

public class OrderManager {
    public static void main(String[] args) {
        Package packages = new Package();

        Order order1 = new Order(53, 100.0, "53", "53", LocalDateTime.of(2021, 10, 10,10,10));
        Order order2 = new Order(54, 150.0, "54", "54", LocalDateTime.of(2022, 11, 11, 11, 11));
        Order order3 = new Order(55, 200.0, "55", "55", LocalDateTime.of(2023, 12, 12, 12, 12));

        try {
            File file = new File("pedidos.txt", "UTF-8");
            Scanner input = new Scanner(file);
            input.nextLine(); 
            
            while (input.hasNextLine()) {
                String line = input.nextLine();
                String[] parts = line.split(";"); 
            }
            input.close();
        
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }

        packages.addOrder(order1);
        packages.addOrder(order2);
        packages.addOrder(order3);

        packages.removeOrder(3);

        packages.findOrder(2);

        packages.printOrder();
        
        packages.calculatePrice();
        //packages.calculatePriceMonth();
        
        packages.saveOrder();


    }
}
