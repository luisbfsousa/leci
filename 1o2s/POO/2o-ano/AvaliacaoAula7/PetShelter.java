package AvaliacaoAula7;

import java.util.ArrayList;
import java.util.List;

public class PetShelter implements IPetShelter {
    
    private List<Animal> animals;


    public PetShelter(String name) {
        this.animals = new ArrayList<>();
    }

    public void addAnimal(Animal animal) {
        this.animals.add(animal);
    }

    public void removeAnimal(Animal animal) {
        this.animals.remove(animal);
    }

    public Animal searchForAnimal(String name) {
        for (Animal animal : this.animals)
            if (animal.getName().equals(name))
                return animal;
        return null;
    }

    public boolean sponsorAnimal(int animalId) {
        for (Animal animal : this.animals)
            if (animal.getId() == animalId && animal.isAvailable()) {
                animal.sponsor();
                return true;
            }
        return false;
    }

    public void listAllAnimals() {
        for (Animal animal : this.animals) {
            System.out.println(animal);
        }
    }

    

}
