package AvaliacaoAula7;

public class Bird extends Animal {
    private String habitat;

    public Bird(String name, int weight, int age, String godfather, String habitat) {
        super(name);
        this.habitat = habitat;
        currentid++;
    }

    public String getHabitat() {
        return this.habitat;
    }

    public void setHabitat(String habitat) {
        this.habitat = habitat;
    }

    

    @Override
    public String toString() {
        return super.toString() + ", Habitat: " + this.habitat;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }

        if (!(o instanceof Bird)) {
            return false;
        }

        Bird bird = (Bird) o;

        return bird.id == this.id && bird.name.equals(this.name) && bird.weight == this.weight && bird.age == this.age && bird.godfather.equals(this.godfather) && bird.habitat.equals(this.habitat);
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.habitat.hashCode();
        return result;
    }
    

    

    
}
