package AvalPráticaPraticar;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PackageManager {
    private List<Package> packages;

    public PackageManager() {
        packages = new ArrayList<>();
    }
    
        public Package searchPackage(int id) {
            for (Package pkg : packages) {
                if (pkg.getID() == id) {
                    return pkg;
                }
            } return null;
        }

    public void addPackage(Package pkg) {
        packages.add(pkg);
    }

    public void removePackage(int id) {
        Package pkg = searchPackage(id);
        if (pkg != null) {
            packages.remove(pkg);
        } else {
            throw new IllegalArgumentException("Package does not exist!");
        }
    }

    public double calculateShippingCost() {
        double totalCost = 0.0;
        shippingCostCalculator calculator = new standardShippingCostCalculator();
        for (Package pkg : packages) {
            totalCost += calculator.calculateShippingCost(pkg);
        } return totalCost;
    }

    public double calculateTotalWeight() {
        double totalWeight = 0.0;
        for (Package pkg : packages) {
            totalWeight += pkg.getKg();
        } return totalWeight;
    }

    public void printAllPackages() {
        if (packages.isEmpty()) {
            System.out.println("No packages.");
        } else {
            for (Package pkg : packages) {
                System.out.printf("%d; %f; %s; %s\n",pkg.getID(),pkg.getKg(),pkg.getDestination(),pkg.getSender());
            }
        }
    }

    public void writeToFile() {
        String pkg_str;
        try(FileWriter writer = new FileWriter("AvalPráticaPraticar/encomendas-generated.txt")) {
            writer.write("ID da encomenda; Peso do pacote; Remetente; Destino\n");
            for (Package pkg : packages) {
                pkg_str = String.format("%d; %f; %s; %s\n",pkg.getID(),pkg.getKg(),pkg.getDestination(),pkg.getSender());
                writer.write(pkg_str);
            }
        } catch (IOException error) {
            System.out.println();
        }
    }

}