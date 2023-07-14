public class Catering extends Activity {

    public static enum Option {
        FULL_MENU("Full menu"), DRINKS_AND_SNACKS("Drinks and Snacks"), LIGHT_BITES("Light Bites");

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

    public Catering(Option option, int participants) {
        super(participants, 25);
        this.option = option;
    }

    public Option getOption() {
        return this.option;
    }

    public void setOption(Option option) {
        this.option = option;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Catering other = (Catering) obj;
        return this.getOption().equals(other.getOption());
    }

    @Override
    public String toString() {
        return String.format("\t'%s' for %s participants.", this.getOption(), this.getParticipants());
    }
    
}
