package exames_passados.testepratico;

public class Sport extends Activity {

    public static enum Modality {
        KAYAK("Kayak"), HIKING("Hiking"), BIKE("Bike"), BOWLING("Bowling");

        private String friendlyName;

        Modality(String friendlyName) {
            this.friendlyName = friendlyName;
        }

        @Override
        public String toString() {
            return this.friendlyName;
        }
    }

    private Modality modality;

    public Sport(Modality modality, int participants) {
        super(participants, 30);
        this.modality = modality;
    }

    public Modality getModality() {
        return this.modality;
    }   

    public void setModality(Modality modality) {
        this.modality = modality;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;

        Sport other = (Sport) obj;
        return this.getModality().equals(other.getModality());
    }

    @Override
    public String toString() {
        return String.format("\t%s sporting activity with %s participants.", this.getModality(), this.getParticipants());
    }
    
}
