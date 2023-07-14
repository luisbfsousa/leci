public class Culture extends Activity {

    public static enum Option {
        ARCHITECTURAL_TOUR("Architectural tour"), RIVER_TOUR("River tour"), ART_MUSEUM("Art museum"), WINE_TASTING("Wine tasting");

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

    public Culture(Option option, int participants) {
        super(participants, 22);
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

        Culture other = (Culture) obj;
        return this.getOption().equals(other.getOption());
    }

    @Override
    public String toString() {
        return String.format("\t%s with %s participants.", this.getOption(), this.getParticipants());
    }
    
}
