public class Restaurante extends Local {
    private TipoComida tipo;

    public Restaurante(String nome, TipoComida tipo) {
        super(nome);
        this.tipo = tipo;
    }

    public TipoComida getTipo() {
        return tipo;
    }

    @Override
    public String toString() {
        return "Restaurante{nome='" + nome + "', tipo=" + tipo + '}';
    }

    /*@Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Local local = (Local) obj;
        return nome.equals(local.nome);
    }*/
}

enum TipoComida {
    MEDITERRANICA, ORIENTAL, VEGETARIANA
}