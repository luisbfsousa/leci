public class SitioCultural extends Local {
    private TipoCultural tipo;
    private GamaPrecos preco;

    public SitioCultural(String nome, TipoCultural tipo, GamaPrecos preco) {
        super(nome);
        this.tipo = tipo;
        this.preco = preco;
    }

    public TipoCultural getTipo() {
        return tipo;
    }

    public GamaPrecos getPreco() {
        return preco;
    }

    @Override
    public String toString() {
        return "SitioCultural{nome='" + nome + "', tipo=" + tipo + ", preco=" + preco + '}';
    }

    /*@Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Local local = (Local) obj;
        return nome.equals(local.nome);
    }*/
}

enum TipoCultural {
    MUSEUAARTE, MUSEUCIENCIA, HISTORICO, RELIGIOSO
}

enum GamaPrecos {
    GRATUITO, BAIXO, MEDIO
}