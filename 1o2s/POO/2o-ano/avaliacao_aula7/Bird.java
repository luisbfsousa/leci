package avaliacao_aula7;

public class Bird extends Animal {
    private String habitat;

    public Bird(int id, String name, double weight, int age, String habitat) {
        super(id,name,weight,age);
        this.habitat = habitat;
    }

    public String getHabitat() {
        return habitat;
    }

    public void setHabitat(){
        this.habitat = habitat;
    }

    @Override
    public String toString() {
        return "Passaro: " + getId() + "/" + getName() + '\'' + "/" + getWeight() + "/" + getAge() + "/" + getSponsorName() + "/" + habitat + '}';
    }


}
