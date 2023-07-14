package aula07.ex3;

public class Apartamentos extends Alojamento {

    private int quartos;

    public Apartamentos (String code, String name, String local, double price, boolean available, double evaluation, int Quartos) {
        super( code, name, local, price, available, evaluation);
        this.quartos = Quartos;
    }

    public int getQuartos() {
        return quartos;
    }

    public void setQuartos  (int quartos) {
        this.quartos = quartos;
    }

}
