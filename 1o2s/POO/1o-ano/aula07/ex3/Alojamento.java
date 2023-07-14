package aula07.ex3;

public class Alojamento {
    //código (String), nome (String), local (String), preço por noite (double), disponibilidade (booleano) e avaliação (double, entre 1.0 e 5.0)
    private String code;
    private String name;
    private String local;
    private Double price;
    private Boolean available;
    private Double evaluation;

    public Alojamento(String code,String name, String local,Double price, Boolean available, Double evaluation){
        this.code = code;
        this.name = name;
        this.local = local;
        this.price = price;
        this.available = available;
        this.evaluation = evaluation;
    }

    public void isValid(double evaluation){
        if ( evaluation < 1 || evaluation > 5){
            throw new IllegalArgumentException("Avaliação Inválida");
        }
    }

    public String getCode() {
        return code;
    }

    public String getName(){
        return name;
    }

    public String getLocal() {
        return local;
    }

    public double getPrice(){
        return price;
    }

    public boolean isAvailable(){
        return available;
    }

    public double getEvaluation(){
        return evaluation;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLocation(String local) {
        this.local = local;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public void setEvaluation(double evaluation){
        this.evaluation = evaluation;
    }

    public void checkIn() {
        this.available = false;
    }

    public void checkOut(){
        this.available = true;
    }

    @Override
    public String toString() {
        return "Alojamento{" + "codigo=" + code + ", nome = " + name + ", localização n= " + local + ", price por Noite = " + price + ", disponibilidade = " + available + ", avaliação = " + evaluation + '}';
    }

    @Override
    public boolean equals(Object obj){
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        final Alojamento other = (Alojamento) obj;
        return this.getCode() == other.getCode();
    }

}
