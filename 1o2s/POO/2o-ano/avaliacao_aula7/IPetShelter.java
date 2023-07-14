package avaliacao_aula7;

public interface IPetShelter {
    public void addAnimal(Animal animal);
    public void removeAnimal(String name);
    public Animal searchForAnimal(String name);
    public boolean sponsorAnimal(int animalId);
    public void listAllAnimals();
    public void printAnimals();
    public void sponsorAnimal(String name, String sponsorName);
}
