public class Electrodomestico extends Produto {
    private String tipo;
    private String marca;
    private String modelo;
    private ClasseEnergetica classe;
    private double potencia;

    public Electrodomestico(String tipo, String marca, String modelo, double potencia, double preco) {
        super(preco);
        this.tipo = tipo;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        setCodigo("E" + getNumParEste());
    }

    public Electrodomestico(String tipo, String marca, String modelo, double preco) {
        super(preco);
        this.tipo = tipo;
        this.marca = marca;
        this.modelo = modelo;
        setCodigo("E" + getNumParEste());
    }

    public void setClasse(ClasseEnergetica classe) {
        this.classe = classe;
    }

    public ClasseEnergetica getClasse() {
        return this.classe;
    }

    @Override
    public String getDescricao() {
        return String.format("%s:%s/%s", tipo, marca, modelo);
    }

    @Override
    public String toString() {
        return String.format("Eletrodomestico [%s %s %s %s %s %.1f W]", getCodigo(), tipo, marca, modelo,
                classe.toString(), potencia);
    }

}
