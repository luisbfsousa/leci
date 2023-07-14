package avaliacao_aula7;

public class Rabbit extends Animal {
    private String fur;

    public Rabbit(int id, String name, double weight, int age, String fur) {
        super(id, name, weight, age);
        this.fur = fur;
    }

    public String getFur() {
        return fur;
    }

    public void setFur(){
        this.fur = fur;
    }

    @Override
    public String toString() {
        return "Coelho: " + getId() + "/" + getName() + '\'' + "/" + getWeight() + "/" + getAge() + "/" + getSponsorName() + "/" + fur + '}';
    }
}