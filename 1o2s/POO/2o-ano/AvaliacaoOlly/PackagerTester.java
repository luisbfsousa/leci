package AvaliacaoOlly;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class PackagerTester {
    public static void main(String[] args){

        PackageManager packages = new PackageManager();

        Package package1 = new Package(50, 10.5, "Destination 1", "Sender 1");
        Package package2 = new Package(51, 8.2, "Destination 2", "Sender 2");
        Package package3 = new Package(52, 5.7, "Destination 3", "Sender 3");
        
        try{
            File file = new File("Olly\\encomendas.txt");
            Scanner input = new Scanner(file);
            input.nextLine(); 
        
            while ((input).hasNextLine()) {
                String line = input.nextLine();
                String[] parts = line.split("; "); 
            }
            input.close();

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + e.getMessage());
        }

        packages.addPackage(package1);
        packages.addPackage(package2);
        packages.addPackage(package3);

        packages.removePackage(53);
        
        double totalWeight = packages.calculateTotalWeight();
        System.out.println("Total Weight of Packages: " + totalWeight);

        Package foundPackage = packages.findPackage(3);
        if (foundPackage != null) {
            System.out.println("Found Package: " + foundPackage);
        } else {
            System.out.println("Package not found.");
        }

        packages.savePackages();
    }
}

