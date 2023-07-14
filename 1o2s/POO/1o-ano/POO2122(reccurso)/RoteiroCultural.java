public class RoteiroCultural extends Servico{
    public static enum Roteiro{
        TRANQUILIDADE("tranquilidade"), RELAXAR("relaxar"), FERIASATIVAS("ferias ativas"), FERIASINATIVAS("ferias inativas");
        
        private String converter;
        
        Roteiro(String converter){
            this.converter = converter;
        }
        
        @Override
        public String toString() {
            return this.converter;
        }
    }
    
    private Roteiro roteiro;

    public RoteiroCultural(RoteiroCultural roteiroCultural, int locais){
        super(roteiroCultural, locais);
        this.roteiro = roteiro;
    }
}
