package aula07.ex3;

public class Quartos extends Alojamento {

    private String tipoQuarto;

    public Quartos(String code, String name, String local, Double price, Boolean available, Double evaluation) {
        super(code, name, local, price, available, evaluation);
        validateTipo(tipoQuarto);
        //this.tipoQuarto = tipoQuarto;
    }

    private void validateTipo(String tipoQuarto){
        if(!tipoQuarto.toLowerCase().equals("single") && !tipoQuarto.toLowerCase().equals("double") && !tipoQuarto.toLowerCase().equals("triple") ){
            throw new IllegalArgumentException("Tipo de quarto inválido");
        }
    }

    public String getTipoQuarto() {
        return tipoQuarto;
    }
    
    public void setTipoQuarto(String tipoQuarto){
        validateTipo(tipoQuarto);
        this.tipoQuarto = tipoQuarto;
    }



    
}
