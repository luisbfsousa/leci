public class Catering extends Activity {

    public enum Option{
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

    public Catering(Option option, int participantes){
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
        return getoption() + " for " + getParticipantes() + "participantes";
    }


}
