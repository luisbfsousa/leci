public class Sport extends Activity {

    public enum Modality{
        KAYAK("kayak"), HIKING("Hiking");

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


    public Sport(Modality modality, int participantes){
        super(participantes, price);
        this.modality = modality;
    }

    public Modality getModality() {
        return this.modality;
    }

    public void setModality(Modality modality) {
        this.modality = modality;
    }

    @Override
    public String toString() {
        return getModality() + " sporting activity with " + getParticipantes() + "participantes";
    }

    

}
