import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class PackagerTester {
    public static void main(String[] args){

        PackageManager packages = new PackageManager();
        standardShippingCostCalculator standardShippingCostCalculator = new standardShippingCostCalculator();
        
        try{
            File file = new File("./gggdr/encomendas.txt");
            Scanner input = new Scanner(file);
            input.nextLine(); 
        
            while ((input).hasNextLine()) {
                String line = input.nextLine();
                String[] parts = line.split("; "); 
                int id = Integer.parseInt(parts[0]);
                double weight = Double.parseDouble(parts[1]);
                String sender = parts[2];
                String destination = parts[3];
                Package pkg = new Package(id, weight, destination, sender);
                packages.addPackage(pkg);
            }
            input.close();

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }

        packages.removePackage(2);
        
        double totalWeight = packages.calculateTotalWeight();
        System.out.println("Total Weight of Packages: " + totalWeight);

        Package foundPackage = packages.findPackage(3);
        if (foundPackage != null) {
            System.out.println("Found Package: " + foundPackage);
        } else {
            System.out.println("Package not found.");
        }


        System.out.println("Shipping Cost: " + standardShippingCostCalculator.calculateShippingCost(foundPackage));

        packages.printAllPackages();
    }
}

