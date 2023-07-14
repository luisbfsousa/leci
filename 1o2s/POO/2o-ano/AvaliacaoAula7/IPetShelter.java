package AvaliacaoAula7;

public interface IPetShelter {
    public void addAnimal(Animal animal);
    public void removeAnimal(Animal animal);
    public Animal searchForAnimal(String name);
    public boolean sponsorAnimal(int animalId);
    public void listAllAnimals();
}
