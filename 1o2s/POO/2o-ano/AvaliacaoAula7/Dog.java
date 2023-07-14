package AvaliacaoAula7;

public class Dog extends Animal {
    private String breed;

    public Dog(String name, int weight, int age, String godfather, String breed) {
        super(name);
        this.breed = breed;
        currentid++;
    }

    public String getBreed() {
        return this.breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    @Override
    public String toString() {
        return super.toString() + ", Breed: " + this.breed;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }

        if (!(o instanceof Dog)) {
            return false;
        }

        Dog dog = (Dog) o;

        return dog.id == this.id && dog.name.equals(this.name) && dog.weight == this.weight && dog.age == this.age && dog.godfather.equals(this.godfather) && dog.breed.equals(this.breed);
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.breed.hashCode();
        return result;
    }
    

    
    

}
