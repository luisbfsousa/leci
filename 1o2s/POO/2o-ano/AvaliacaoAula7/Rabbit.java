package AvaliacaoAula7;

public class Rabbit extends Animal {
    private String fur;

    public Rabbit(String name, int weight, int age, String godfather, String fur) {
        super(name);
        this.fur = fur;
        currentid++;
    }

    public String getFur() {
        return this.fur;
    }

    public void setFur(String fur) {
        this.fur = fur;
    }

    @Override
    public String toString() {
        return super.toString() + ", Fur: " + this.fur;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }

        if (!(o instanceof Rabbit)) {
            return false;
        }

        Rabbit rabbit = (Rabbit) o;

        return rabbit.id == this.id && rabbit.name.equals(this.name) && rabbit.weight == this.weight && rabbit.age == this.age && rabbit.godfather.equals(this.godfather) && rabbit.fur.equals(this.fur);
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + this.fur.hashCode();
        return result;
    }
    

    

}
