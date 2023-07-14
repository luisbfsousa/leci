public class Culture extends Activity {
    private Option option;

    public Culture(Culture.Option option, int participantes) {
        super(participantes);
        this.option = option;
        setPreco(22);
    }

    public Option getOption() {
        return option;
    }

    public void setOption(Option option) {
        this.option = option;
    }

    @Override
    public String toString() {
        return String.format("%s with %d participants", option.toString(), getParticipantes());
    }

    public enum Option {
        ARCHITECTURAL_TOUR("Architectural tour"),
        RIVER_TOUR("River tour"),
        ART_MUSEUM("Art museum"),
        WINE_TASTING("Wine tasting");

        private String value;

        Option(final String value) {
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
