
public class Transporte extends Servico {
    public static enum Combustivel {
        ELETRICO("eletrico"), HIBRIDO("hibrido");

        private String converter;

        Combustivel(String converter) {
            this.converter = converter;
        }

        @Override
        public String toString() {
            return this.converter;
        }
    }

    private Combustivel combustivel;
    public int ocupantes;
    public int km;

    public Transporte(int ocupantes, int km, Combustivel combustivel) {
        super(ocupantes, km, combustivel);
        this.combustivel = combustivel;
    }

    public Combustivel getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(Combustivel combustivel) {
        this.combustivel = combustivel;
    }

    public int getOcupantes() {
        return ocupantes;
    }

    public void setOcupantes(int ocupantes) {
        this.ocupantes = ocupantes;
    }

    public int getKm() {
        return km;
    }

    public void setKm(int km) {
        this.km = km;
    }

    @Override
    public String toString() {
        return String.format("\t Transporte para %s pessoas, %s, Kms máximos: %s", this.getOcupantes(), this.getCombustivel(), this.getKm());
    }


}

    
