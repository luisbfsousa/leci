package aula11.ex2;
import java.util.HashMap;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;

public class voo {
    private String time;
    private String id;
    private String company;
    private String begin;
    private String delay;
    private String obs;
    private static HashMap<String, String> companys = new HashMap<>();

    public void Voo(String time, String id, String begin, String delay) throws IOException {
        this.time = time;
        this.id = id;
        this.begin = begin;
        this.delay = delay;
        if (this.delay == "") {
            this.obs = "";
        } else {
            this.obs = "Previsto: " + this.getPrevisao();
        }
        this.company = getcompanys().get(this.id.substring(0, 2));
    }

    public String gettime() {
        return time;
    }

    public String getId() {
        return id;
    }

    public String getcompany() {
        return company;
    }

    public String getbegin() {
        return begin;
    }

    public String getdelay() {
        return delay;
    }

    public int getdelaySeconds() {
        return Integer.parseInt(this.getdelay().substring(0, 2))*3600 + Integer.parseInt(this.getdelay().substring(3, 5))*60; 
    }

    public String getObs() {
        return obs;
    }

    private String getPrevisao() {
        int new_hour = Integer.parseInt(this.time.substring(0, 2)) + Integer.parseInt(this.delay.substring(0, 2));
        int new_minute = Integer.parseInt(this.time.substring(3, 5)) + Integer.parseInt(this.delay.substring(3, 5));

        if (new_minute >= 60) {
            new_hour += 1;
            new_minute -= 60;
        }
        if (new_hour >= 24) {
            new_hour -= 24;
        }

        return String.format("%02d:%02d", new_hour, new_minute);
    }

    @Override
    public String toString() {
        return String.format("%-20s %-20s %-20s %-20s %-20s %-20s", this.time, this.id, this.company, this.begin, this.delay, this.obs);
    }

    private HashMap<String, String> getcompanys() throws IOException {
        if (companys.isEmpty()) {
            Scanner txtcompanys = new Scanner(new FileReader("C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\companys.txt"));
            txtcompanys.nextLine();
            while (txtcompanys.hasNext()) {
                String[] company = txtcompanys.nextLine().split("\t");
                companys.put(company[0], company[1]);
            }
        }
        return companys;
    }
}
