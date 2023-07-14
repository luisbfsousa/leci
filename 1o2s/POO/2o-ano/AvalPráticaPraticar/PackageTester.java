package AvalPráticaPraticar;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class PackageTester {
    public static void main(String[] args) {
        PackageManager packageManager = new PackageManager();

        Package package1 = new Package(10.5, "Destination 1", "Sender 1");
        Package package2 = new Package(8.2, "Destination 2", "Sender 2");
        Package package3 = new Package(5.7, "Destination 3", "Sender 3");
        
        packageManager.addPackage(package1);
        packageManager.addPackage(package2);
        packageManager.addPackage(package3);

        try {
            File file = new File("AvalPráticaPraticar/encomendas.txt");
            Scanner scanner = new Scanner(file);
            scanner.nextLine();

            while (scanner.hasNextLine()) {
                String[] pkg_args = scanner.nextLine().split("; ");

                double weight = Double.parseDouble(pkg_args[1]);
                String sender = pkg_args[2];
                String destination = pkg_args[3];
                Package pkg = new Package(weight, destination, sender);

                packageManager.addPackage(pkg);
            } scanner.close();
        } catch (FileNotFoundException error) {
            System.out.println("File not found!");
        }

        try {
            packageManager.removePackage(50);
        } catch (IllegalArgumentException error) {
            System.out.println("Package was found.");
        }

        packageManager.removePackage(12);
        
        if (packageManager.searchPackage(89) == null) {
            System.out.println("Package not found!");
        } else {
            System.out.println("Package found!");
        }

        if (packageManager.searchPackage(9) == null) {
            System.out.println("Package not found!");
        } else {
            System.out.println("Package found!");
        }
        
        double totalCost = packageManager.calculateShippingCost();
        double totalWeight = packageManager.calculateTotalWeight();
        System.out.printf("Total Weight: %.2f kg\nTotal Cost: %.2f €\n",totalWeight,totalCost);

        packageManager.writeToFile();
    }
}
