package RoboCopa;

public abstract class ObjetoMovel {

    private int x, y;
    private double velocidade, distancia;

    public ObjetoMovel(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public ObjetoMovel() {
        
    }

    public double move(int x, int y) {
        distancia += Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
        return distancia; 
    }

    public double move(int x, int y, double velocidade) {
        distancia += Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
        return distancia;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public double getVelocidade() {
        return velocidade;
    }

    public void setVelocidade(double velocidade) {
        this.velocidade = velocidade;
    }

    public double getDistancia() {
        return distancia;
    }

    public void setDistancia(double distancia) {
        this.distancia = distancia;
    }
    
    
}