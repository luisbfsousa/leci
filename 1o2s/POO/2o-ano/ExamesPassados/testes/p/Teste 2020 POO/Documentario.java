public class Documentario extends Produto {
    private String titulo;
    private int ano;
    private int duracao;
    public Documentario(double preco, String titulo, int ano, int duracao) {
        super(preco);
        this.titulo = titulo;
        this.ano = ano;
        this.duracao = duracao;
    }

    
}
