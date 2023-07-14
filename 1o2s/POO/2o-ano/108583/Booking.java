import java.time.LocalDate;

public class Booking {
    private String aluguer;
    private LocalDate datainicio;
    private LocalDate datafim;


    public Booking(String aluguer, LocalDate datainicio, LocalDate datafim) {
        this.aluguer = aluguer;
        this.datainicio = datainicio;
        this.datafim = datafim;
    }

    public String getAluguer() {
        return this.aluguer;
    }

    public void setAluguer(String aluguer) {
        this.aluguer = aluguer;
    }

    public LocalDate getDatainicio() {
        return this.datainicio;
    }

    public void setDatainicio(LocalDate datainicio) {
        this.datainicio = datainicio;
    }

    public LocalDate getDatafim() {
        return this.datafim;
    }

    public void setDatafim(LocalDate datafim) {
        this.datafim = datafim;
    }


    @Override
    public String toString() {
        return " [ " + this.datainicio + " : " + this.datafim + " ] ";
    }

}
