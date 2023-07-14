import java.time.LocalDate;

public class Voo extends Servico{
    
    public static enum Classe{
        TURISTICA("turistica") , PRIMEIRA("primeira"), EXECUTIVA("executiva");

        private String converter;

        Classe(String converter){
            this.converter = converter;
        }

        @Override
        public String toString() {
            return this.converter;
        }
    }

    private Classe classe;
    public String codigo;
    public LocalDate date;
    

    public Voo(String codigo, LocalDate date, Classe classe){
        super(codigo, date, classe);
        this.classe = classe;
    }

    public Classe getClasse(){
        return this.classe;
    }

    public void setClasse(Classe Classe){
        this.classe = classe;
    }

    public String getCodigo(){
        return this.codigo;
    }

    public void setCodigo(String codigo){
        this.codigo = codigo;
    }

    public LocalDate getDate(){
        return this.date;
    }

    public void setDate(LocalDate date){
        this.date = date;
    }

    public String toString() {
        return String.format("\t Voo %s em %s, classe %s", this.getCodigo(), this.getDate(), this.getClasse());
    }


}
