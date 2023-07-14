
public abstract class CampingSpace {
    private String localizacao;
    private int[] dimensao;
    private double preco;

    public CampingSpace(String localizacao, int[] dimensao, double preco) {
        this.localizacao = localizacao;
        this.dimensao = dimensao;
        this.preco = preco;
    }

    public String getlocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(String localizacao){
        this.localizacao = localizacao;
    }

    public int[] getdimensao() {
        return dimensao;
    }

    public void setDimesao(int[] dimensao){
        this.dimensao = dimensao;
    }

    public double getpreco() {
        return preco;
    }

    public void setPreco(int preco){
        this.preco = preco;
    }

    public abstract SpaceType getType();

    @Override
    public String toString() {
        return "Caravan space located in " + this.localizacao+ ", with dimensao " + this.dimensao + "with dimensao " + this.dimensao + ", " + this.preco + "/day, ";
    }

}
