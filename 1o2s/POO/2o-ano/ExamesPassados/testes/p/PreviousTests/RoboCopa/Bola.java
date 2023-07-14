package RoboCopa;

public class Bola extends ObjetoMovel {
    
    private CorDaBola corDaBola;
    private static int numeroBola = 0;

    public Bola(CorDaBola corDaBola) {
        this.corDaBola = corDaBola;
        numeroBola = 1;
    }

    public static int getnBolas() {
        return numeroBola;
    }

    public CorDaBola getCorDaBola() {
        return corDaBola;
    }    
        
}