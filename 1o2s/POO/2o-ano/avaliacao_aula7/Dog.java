package avaliacao_aula7;

public class Dog extends Animal {
    private String breed;

    public Dog(int id, String name, double weight, int age, String breed) {
        super(id, name, weight, age);
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(){
        this.breed = breed;
    }



    @Override
    public String toString() {
        return "Cao: " + getId() + "/" + getName() + '\'' + "/" + getWeight() + "/" + getAge() + "/" + getSponsorName() + "/" + breed + '}';
    }
}
