package avaliacao_aula7;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        IPetShelter shelter = new PetShelter("Patudos");

        int choice = 0;
        do {
            System.out.println("");
            System.out.println("1. Add animal");
            System.out.println("2. Remove animal");
            System.out.println("3. Search for animal");
            System.out.println("4. Sponsor an animal");
            System.out.println("5. View all animals");
            System.out.println("6. Exit");
            System.out.println("");

            System.out.print("Selecione a opcao: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("id: ");
                    Integer id = scanner.nextInt();
                    System.out.print("nome: ");
                    String name = scanner.next();
                    System.out.print("peso: ");
                    int weight = scanner.nextInt();
                    System.out.print("idade: ");
                    int age = scanner.nextInt();
                    Animal animal1 = new Animal(id, name, weight, age );
                    shelter.addAnimal(animal1);
                    break;
                case 2:
                    System.out.print("Nome: ");
                    String name2 = scanner.nextLine();
                    shelter.removeAnimal(name2);
                    break;
                case 3:
                    System.out.print("Nome: ");
                    String name3 = scanner.nextLine();
                    Animal animal2 = shelter.searchForAnimal(name3);
                    if (animal2 != null) {
                        System.out.print("Nome: " + animal2.getName());
                        System.out.print("Idade: " + animal2.getAge());
                    } else {
                        System.out.println("Nao encontrado");
                    }
                    break;
                case 4:
                    System.out.print("Nome: ");
                    String name4 = scanner.nextLine();
                    System.out.print("Nome padrinho: ");
                    String sponsorName = scanner.nextLine();
                    shelter.sponsorAnimal(name4, sponsorName);
                    break;
                case 5:
                    shelter.printAnimals();
                case 6:
                    System.out.println("A sair do programa");


                    break;
                default:
                    System.out.println("Escolha invalida");
                    break;
            }
        } while (choice != 6);
    }
}
