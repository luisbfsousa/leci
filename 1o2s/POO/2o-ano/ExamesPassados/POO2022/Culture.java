public class Culture extends Activity {

    public enum Option{
        ARCHITECTURAL_TOUR("Architectural Tour"), RIVER_TOUR("River Tour"), ART_MUSEUM("Art Museum"), WINE_TASTING("Wine Tasting");

        private String friendlyName;

        Option(String friendlyName) {
            this.friendlyName = friendlyName;
        }

        @Override
        public String toString() {
            return this.friendlyName;
        }
    }

    private Option option;

    public Culture(Option option, int participantes){
        super(participantes, price);
        this.option = option;
    }

    public Option getoption() {
        return this.option;
    }

    public void setoption(Option option) {
        this.option = option;
    }

    @Override
    public String toString() {
        return getoption() + " with " + getParticipantes() + "participantes";
    }

}
