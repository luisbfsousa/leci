package aula04.ex4;
import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }
    
    public void drive(int distance) {
        this.kms += distance;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        int i;
        for (i = 0; i < cars.length; i++) {
            System.out.print("Insira dados do carro (marca, modelo, ano, quilómetros): ");
            String input = sc.nextLine();
            if (input.isEmpty()) {
                break;
            }
            String[] data = input.split(" ");
            String make = data[0];
            String model = data[1];
            int year = Integer.parseInt(data[2]);
            int kms = Integer.parseInt(data[3]);
            cars[i] = new Car(make, model, year, kms);
        }
        return i;
    }

    static void registerTrips(Car[] cars, int numCars) {
        while (true) {
            System.out.print("Registe uma viagem no formato \"carro:distância\": ");
            String input = sc.nextLine();
            if (input.isEmpty()) {
                break;
            }
            String[] data = input.split(":");
            int carIndex = Integer.parseInt(data[0].trim());
            int distance = Integer.parseInt(data[1].trim());
            cars[carIndex].drive(distance);
        }
    }


    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        for (int i = 0; i < cars.length && cars[i] != null; i++) {
            Car car = cars[i];
            System.out.printf("%s %s, %d, kms: %d\n", car.make, car.model, car.year, car.kms);
        }
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars > 0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

    sc.close();

}
}