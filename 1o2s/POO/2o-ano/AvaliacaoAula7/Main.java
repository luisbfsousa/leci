package AvaliacaoAula7;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        IPetShelter shelter = new PetShelter("Patudos");
        int choice = 0;
        new Dog("Caju", 6, 8, "Luis", "Labrador");
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
                    // adicionar animal
                    scanner.nextLine();
                    System.out.print("Nome do animal: ");
                    String name = scanner.nextLine();
                    Animal animal = new Animal(name);
                    shelter.addAnimal(animal);
                    break;
                case 2:
                    // remover animal
                    scanner.nextLine();
                    System.out.print("Id do animal: ");
                    String searchname = scanner.nextLine();
                    Animal animalname = shelter.searchForAnimal(searchname);
                    if (animalname != null)
                        shelter.removeAnimal(animalname);
                    else
                        System.out.println("Animal nao encontardo");
                    break;
                case 3:
                    // procurar animal
                    scanner.nextLine();
                    System.out.print("Nome animal: ");
                    String searchName = scanner.nextLine();
                    Animal animalByName = shelter.searchForAnimal(searchName);
                    if (animalByName != null)
                        System.out.println(animalByName);
                    else
                        System.out.println("Animal nao encontrado");
                    break;
                case 4:
                    scanner.nextLine();
                    System.out.println("Enter animal id: ");
                    int animalId = Integer.parseInt(scanner.nextLine());
                    if (shelter.sponsorAnimal(animalId))
                        System.out.println("Animal adotado");
                    else
                        System.out.println("Animal com dono");
                    break;
                case 5:
                    shelter.listAllAnimals();
                    break;

                case 6:
                    System.out.println("A sair do programa");
                    break;
                default:
                    System.out.println("Opcao invalida.");
                    break;

            }

        } while (choice != 6);
    }
}
