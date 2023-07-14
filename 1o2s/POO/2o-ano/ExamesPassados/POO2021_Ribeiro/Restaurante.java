package ExamesPassados.POO2021_Ribeiro;

public class Restaurante {

    private String nome;
    private TipoComida tipoComida;

    public Restaurante(String nome, TipoComida tipoComida) {
        this.nome = nome;
        this.tipoComida = tipoComida;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public TipoComida getTipoComida() {
        return tipoComida;
    }

    public void setTipoComida(TipoComida tipoComida) {
        this.tipoComida = tipoComida;
    }

    @Override
    public String toString() {
        String str = String.format("Restaurante [nome=%s, tipo=%s]", this.nome, this.tipoComida);
        return str;
    }
    
}
