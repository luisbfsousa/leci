
public class Restaurante {
    private String nome;
    private TipoComida tipoComida;

    public Restaurante(String nome, TipoComida tipoComida){
        this.nome =nome;
        this.tipoComida = tipoComida;
    }


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public TipoComida getTipoComida() {
        return this.tipoComida;
    }

    public void setTipoComida(TipoComida tipoComida) {
        this.tipoComida = tipoComida;
    }


}
