package AvaliacaoAula7;

public class Animal {
    protected int id;
    protected String name;
    protected int weight;
    protected int age;
    protected String godfather;
    protected boolean available;

    public static int currentid = 1; 

    public Animal(String name) {
        this.id = currentid;
        this.name = name;
        this.weight = 0;
        this.age = 0;
        this.godfather = "None";
        this.available = true;
        currentid++;
    }

    public Animal(String name, int weight, int age, String godfather) {
        this.id = currentid;
        this.name = name;
        this.weight = weight;
        this.age = age;
        this.godfather = godfather;
        this.available = true;
        currentid++;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getAge() {
        return this.age;
    }

    public String getGodfather() {
        return this.godfather = "godfathered";
    }

    public void setGodfather(String godfather) {
        this.godfather = godfather;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void sponsor() {
        this.available = false;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "ID: " + this.id + ", Name: " + this.name + ", Weight: " + this.weight + ", Age: " + this.age + ", Godfather: " + this.godfather;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }

        if (!(o instanceof Animal)) {
            return false;
        }

        Animal animal = (Animal) o;

        return animal.id == this.id && animal.name.equals(this.name) && animal.weight == this.weight && animal.age == this.age && animal.godfather.equals(this.godfather);
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.id;
        return result;
    }


}
