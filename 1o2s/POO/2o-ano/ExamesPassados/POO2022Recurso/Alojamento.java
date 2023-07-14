public class Alojamento extends Servico {
    private String nome;
    private int quartos;
    private int ocupacao;
    private Regime regime;

    public Alojamento(String nome, int quartos, int ocupacao, Regime regime) {
        super("A");
        this.nome = nome;
        this.quartos = quartos;
        this.ocupacao = ocupacao;
        this.regime = regime;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getQuartos() {
        return this.quartos;
    }

    public void setQuartos(int quartos) {
        this.quartos = quartos;
    }

    public int getOcupacao() {
        return this.ocupacao;
    }

    public void setOcupacao(int ocupacao) {
        this.ocupacao = ocupacao;
    }

    public Regime getRegime() {
        return this.regime;
    }

    public void setRegime(Regime regime) {
        this.regime = regime;
    }


    @Override
    public String toString() {
        return " [] Alojamento " + getNome() + " com " + getQuartos() + " quartos, ocupacao maxima " + getOcupacao() +" pessoas, em  Regime de " + getRegime();
    }

}
