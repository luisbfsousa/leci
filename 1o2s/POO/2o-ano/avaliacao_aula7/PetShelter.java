package avaliacao_aula7;

import java.util.ArrayList;
import java.util.List;

public class PetShelter implements IPetShelter {
    private String name;
    private List<Animal> animals;

    public PetShelter(String name) {
        this.name = name;
        this.animals = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public List<Animal> getAnimals() {
        return animals;
    }

    @Override
    public void addAnimal(Animal animal) {
        animals.add(animal);
    }

    //@Override
    public void removeAnimal(Animal animal) {
        animals.remove(animal);
    }

    @Override
    public Animal searchForAnimal(String name) {
        for (Animal animal : animals) {
            if (animal.getName().equals(name)) {
                return animal;
            }
        }
        return null;
    }

    @Override
    public boolean sponsorAnimal(int animalId) {
        for (Animal animal : animals) {
            if (animal.getId() == animalId) {
                animal.setSponsorName("Sponsor ");
                return true;
            }
        }
        return false;
    }

    @Override
    public void listAllAnimals() {
        for (Animal animal : animals) {
            System.out.println(animal);
        }
    }

    @Override
    public void removeAnimal(String name) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'removeAnimal'");
    }

    @Override
    public void printAnimals() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'printAnimals'");
    }

    @Override
    public void sponsorAnimal(String name, String sponsorName) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'sponsorAnimal'");
    }
}
