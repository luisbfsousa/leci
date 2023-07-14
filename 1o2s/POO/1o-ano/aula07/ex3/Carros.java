package aula07.ex3;

public class Carros {
    // classe (char, de ‘A’ a ‘F’) e indicação do tipo de motorização (gasolina/diesel/híbrido/elétrico). Deve permitir as operações de checkIn e checkOut
    private char classe;
    private String motor;
    private Boolean disponivel;

    public Carros(char classe, String motor){
        validateClasse(classe);
        validateTipoMotor(motor);
        this.classe = classe;
        this.motor = motor;
        this.disponivel = true;
    }

    private void validateClasse(char classe){
        if(classe != 'A' && classe != 'B' && classe != 'C' && classe != 'D' && classe != 'E' && classe != 'F'){
            throw new IllegalArgumentException("Classe inválida");
        }
    }

    private void validateTipoMotor(String motor) {
        if (!motor.toLowerCase().equals("gasolina") && !motor.toLowerCase().equals("hibrido") && !motor.toLowerCase().equals("diesel") & !motor.toLowerCase().equals("eletrico")) {
            throw new IllegalArgumentException("Tipo de motor inválido");
        } 
    }

    public char getClasse() {
        return this.classe;
    }

    public String getMotor() {
        return this.motor;
    }

    public boolean getDisponivel() {
        return this.disponivel;
    }

    public void setClasse( char classe){
        this.classe = classe;
    }

    public void setMotor(String motor) {
        this.motor = motor;
    }

    public void setDisponivel(boolean disponivel) {
        this.disponivel = disponivel;
    }

    public void levantar() throws Exception{
        if(this.disponivel) this.disponivel = false;
        else throw new Exception("Carro indisponível");
    }

    public void entregar() throws Exception{
        if(!this.disponivel) this.disponivel = false;
        else throw new Exception("Carro não alugado");
    }

}
