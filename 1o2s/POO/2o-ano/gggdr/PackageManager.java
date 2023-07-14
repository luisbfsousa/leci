import java.util.ArrayList;
import java.util.List;

public class PackageManager {
    private List<Package> packages;

    public PackageManager() {
        packages = new ArrayList<>();
    }

    public void addPackage(Package pack) {
        packages.add(pack);
    }

    public void removePackage(int packageId) {
        Package foundPackage = findPackage(packageId);
        if (foundPackage != null) {
            packages.remove(foundPackage);
            System.out.println("Package with ID " + packageId + " has been removed.");
        } else {
            System.out.println("Package with ID " + packageId + " does not exist.");
        }
    }

    public void printPackages() {
        if (packages.isEmpty()) {
            System.out.println("No packages found.");
        } else {
            System.out.println("Packages:");
            for (Package pack : packages) {
                System.out.println(pack);
            }
        }
    }

    public double calculateTotalWeight() {
        double totalWeight = 0.0;
        for (Package pack : packages) {
            totalWeight += pack.getWeight();
        }
        return totalWeight;
    }

	public Package findPackage(int packageId) {
        for (Package pack : packages) {
            if (pack.getId() == packageId) {
                return pack;
            }
        }
        return null;
    }

    public void printAllPackages() {
        if (packages.isEmpty()) {
            System.out.println("No packages found.");
        } else {
            System.out.println("Packages:");
            for (Package pack : packages) {
                System.out.println(pack);
            }
        }
    }
}
