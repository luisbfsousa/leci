import java.time.LocalDate;

public class Voo extends Servico{
    private String code;
    private LocalDate date;
    private Classe classe;

    public Voo(String code, LocalDate date, Classe classe) {
        super("V");
        this.code = code;
        this.date = date;
        this.classe = classe;
    }


    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public LocalDate getDate() {
        return this.date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Classe getClasse() {
        return this.classe;
    }

    public void setClasse(Classe classe) {
        this.classe = classe;
    }


    @Override
    public String toString() {
        return "[ V" + super.getId()+ "] Voo " + getCode() + " em " +getDate() + ", classe " + getClasse() ;
    }
}
