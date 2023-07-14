package avaliacao_aula7;

import java.util.Objects;

public class Animal {
    private int id;
    private String name;
    private double weight;
    private int age;
    private String sponsorName;

    public Animal(int id, String name, double weight, int age) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.age = age;
        this.sponsorName = null;
    }

    public Animal(Integer id2, int name2, String weight2, String age2) {
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getWeight() {
        return weight;
    }

    public int getAge() {
        return age;
    }

    public String getSponsorName() {
        return sponsorName;
    }

    public void setSponsorName(String sponsorName) {
        this.sponsorName = sponsorName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Animal animal = (Animal) o;
        return id == animal.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Animal " + id + "/" + name +'/' + weight + " / " + age + "/" + sponsorName + '}';
    }
}

