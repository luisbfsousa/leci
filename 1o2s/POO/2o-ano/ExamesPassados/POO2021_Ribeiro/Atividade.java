package ExamesPassados.POO2021_Ribeiro;

public abstract class Atividade implements PontosdeInteresse {

    private int id;
    private String nome;

    public Atividade(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        String str = String.format("Atividade [num=%s, nome=%s]", this.id, this.nome);
        return str;
    }

}
