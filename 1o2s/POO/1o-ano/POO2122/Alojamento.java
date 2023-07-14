
public class Alojamento extends Servico {
    public static enum Regime{
        PEQUENOALMOCO("pequeno almoco"), MEIAPENSAO("meia pensão"), TUDOINCLUIDO("tudo incluido"), PENSAOCOMPLETA("pensão completa");

        private String converter;

        Regime(String converter){
            this.converter = converter;
        }

        @Override
        public String toString() {
            return this.converter;
        }
    }

    private Regime regime;
    public int quartos;
    public int maximo;
    public String nome;

    public Alojamento(String nome, int quartos, int maximo, Regime regime){
        super(nome, quartos, maximo, regime);
        this.regime = regime;
    }

    public Regime getRegime(){
        return this.regime;
    }

    public void setRegime(Regime regime){
        this.regime = regime;
    }

    public String getNome(){
        return this.nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public int getQuartos(){
        return this.quartos;
    }

    public void setQuartos(int quartos){
        this.quartos = quartos;
    }

    public int getMaximo(){
        return this.maximo;
    }

    public void setMaximo(int maximo){
        this.maximo = maximo;
    }



    @Override
    public String toString() {
        return String.format("\tAlojamento %s com %s quartos, ocupação maxima %s pessoas, em regime de %s ", this.getNome()/*,  this.getPessoas()*/);
    }



}
