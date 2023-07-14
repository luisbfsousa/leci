import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Scanner;

/**
 * RandomTickets
 */
public class RandomTickets {

    private List<Festival> festivalList;
    private Map<Person, List<Festival>> inventario;

    public RandomTickets() {
        this.festivalList = getFestivals();
        this.inventario = new HashMap<>();
    }

    private List<Festival> getFestivals() {
        List<Festival> festivals = new ArrayList<>();
        try (Scanner myReader = new Scanner(new File("Lista_festivais.txt"));) {
            myReader.nextLine();
            while (myReader.hasNextLine()) {
                String[] info = myReader.nextLine().split("\t");
                DateYMD startDay = new DateYMD(Integer.parseInt(info[0].split("-")[0]),
                        Integer.parseInt(info[0].split("-")[1]), Integer.parseInt(info[0].split("-")[2]));
                DateYMD endDay = new DateYMD(Integer.parseInt(info[1].split("-")[0]),
                        Integer.parseInt(info[1].split("-")[1]), Integer.parseInt(info[1].split("-")[2]));
                festivals.add(new Festival(startDay, endDay, info[2], info[3], Integer.parseInt(info[4])));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return festivals;
    }

    public void getRandomTicket(Person p) {
        Random rand = new Random();
        Festival randomElement;
        // escolher festival com bilhetes disponiveis e verificar se a pessoa ja tem 2
        // bilhetes para esse festival
        // se nao for possivel dar bilhetes, escolhe se outro festival
        boolean valid = false;
        do {
            randomElement = festivalList.get(rand.nextInt(festivalList.size()));
            try {
                valid = randomElement.getNumTickets() > 0 && Collections.frequency(inventario.get(p), randomElement) < 2;
            } catch (Exception e) {
                valid = true;
            }
        } while (!valid);
        List<Festival> temp = new ArrayList<>();
        temp.add(randomElement);
        randomElement.setNumTickets(randomElement.getNumTickets() - 1);
        if (inventario.putIfAbsent(p, temp) != null) {
            inventario.get(p).add(randomElement);
        }
    }

    public List<Festival> getFestivalList() {
        return this.festivalList;
    }

    public void setFestivalList(List<Festival> festivalList) {
        this.festivalList = festivalList;
    }

    @Override
    public String toString() {
        return "{" +
                " festivalList='" + getFestivalList() + "'" +
                "}";
    }

    public void listPersons() {
        for (Map.Entry<Person, List<Festival>> entry : inventario.entrySet()) {
            Person key = entry.getKey();
            List<Festival> value = entry.getValue();
            String festivais = "";
            for (Festival f : value) {
                festivais += f.getName() + " | ";
            }
            System.out.printf("A pessoa %s ganhou %d bilhetes para os seguintes festivais: %s\n", key.getNome(),
                    value.size(), festivais);
        }
    }

    public void listAvailableTickets() {
        System.out.println("Bilhetes restantes: ");
        for (Festival f : festivalList) {
            if (f.getNumTickets() > 0) {
                System.out.printf("%s (%d bilhetes)\n", f.getName(), f.getNumTickets());
            }
        }
    }
}
