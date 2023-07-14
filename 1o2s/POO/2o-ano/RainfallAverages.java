import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.Month;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class RainfallInfo {
    LocalDate date;
    String location;
    double rainfall;

    RainfallInfo(LocalDate date, String location, double rainfall) {
        this.date = date;
        this.location = location;
        this.rainfall = rainfall;
    }

    LocalDate getDate() { return date; }
    String getLocation() { return location; }
    double getRainfall() { return rainfall; }
}


public class RainfallAverages {

    public static void main(String[] args) {
        String filePath = "rainfall_data.csv";
        List<String> lines = null;
        String header = null;

        try {
            // Read lines from file
            lines = Files.readAllLines(Paths.get(filePath));
            header = lines.get(0);
            lines = lines.subList(1, lines.size());

            System.out.printf("File header: %s\n", header);
            System.out.printf("Number of lines, excluding header: %d\n\n\n", lines.size());

            List<RainfallInfo> rainfallData = new ArrayList<>();

            // Create list of information from file, represented as RainfallInfo objects
            for (String line : lines) {
                String[] parts = line.split(",");
                LocalDate date = LocalDate.parse(parts[0]);
                String location = parts[1];
                double rainfall = Double.parseDouble(parts[2]);
                rainfallData.add(new RainfallInfo(date, location, rainfall));
            }

            // Print rainfall values for Porto and dates in April
            System.out.println("Rainfall values for Porto in April:");
            for (RainfallInfo info : rainfallData) {
                if (info.getLocation().equals("Porto") && info.getDate().getMonth() == Month.APRIL) {
                    System.out.printf("Porto [%s]: %.1f\n", info.getDate(), info.getRainfall());
                }
            }

            System.out.println();

            // Calculate average rainfall per location
            Map<String, Double> rainfallPerLocation = new HashMap<>();
            Map<String, Integer> rainfallCountPerLocation = new HashMap<>();

            for (RainfallInfo info : rainfallData) {
                String location = info.getLocation();
                double rainfall = info.getRainfall();

                rainfallPerLocation.put(location, rainfallPerLocation.getOrDefault(location, 0.0) + rainfall);
                rainfallCountPerLocation.put(location, rainfallCountPerLocation.getOrDefault(location, 0) + 1);
            }

            // Calculate and print average rainfall per location
            System.out.println("Average rainfall per location:");
            for (String location : rainfallPerLocation.keySet()) {
                double totalRainfall = rainfallPerLocation.get(location);
                int count = rainfallCountPerLocation.get(location);
                double averageRainfall = totalRainfall / count;

                System.out.printf("Location: %s, Average Rainfall %.2f\n", location, averageRainfall);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
