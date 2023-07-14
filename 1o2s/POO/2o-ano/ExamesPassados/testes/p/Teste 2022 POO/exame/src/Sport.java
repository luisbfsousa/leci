public class Sport extends Activity {
    private Modality modalidade;

    public Sport(Sport.Modality modalidade, int participantes) {
        super(participantes);
        this.modalidade = modalidade;
        setPreco(30);
    }

    public Modality getModalidade() {
        return modalidade;
    }

    public void setModalidade(Modality modalidade) {
        this.modalidade = modalidade;
    }

    @Override
    public String toString() {
        return String.format("%s sporting activity with %d participants.", modalidade.toString(), getParticipantes());
    }

    public enum Modality {
        KAYAK("Kayak"),
        HIKING("Hiking"),
        BIKE("Bike"),
        BOWLING("Bowling");

        private String value;

        Modality(final String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        @Override
        public String toString() {
            return this.getValue();
        }
    }
}
