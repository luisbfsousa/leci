package ExercicioD;

public class ProdutoLacteo extends Alimento implements TemperaturaInterface {
    
	private double teorGordura;
	private int min, max;

    public ProdutoLacteo(String nome,double preço, int calorias100Gramas, String dataValidade) {
        super(nome, dataValidade, calorias100Gramas, preço);
	}
	
	public ProdutoLacteo(String nome,double preço, int calorias100Gramas, String dataValidade, double teorGordura) {
		super(nome, dataValidade, calorias100Gramas, preço);
		this.teorGordura = teorGordura;
	}
    

    public double getTeorGordura() {
        return teorGordura;
    }

    public void setTeorGordura(double teorGordura) {
        this.teorGordura = teorGordura;
    }

	@Override
	public void setTemp(int min, int max) {
		this.min = min;
		this.max = max;
		
	}

	@Override
	public int getTempMin() {
		return min;
	}

	@Override
	public int getTempMax() {
		return max;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + max;
		result = prime * result + min;
		long temp;
		temp = Double.doubleToLongBits(teorGordura);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProdutoLacteo other = (ProdutoLacteo) obj;
		if (max != other.max)
			return false;
		if (min != other.min)
			return false;
		if (Double.doubleToLongBits(teorGordura) != Double.doubleToLongBits(other.teorGordura))
			return false;
		return true;
	}

	@Override
	public String toString() {
		//return "ProdutoLacteo [max=" + max + ", min=" + min + ", teorGordura=" + teorGordura + "]";
		StringBuilder sb = new StringBuilder();
		sb.append("PRODLACTEO " + super.toString() + " Gordura: " + teorGordura + " TempMin: " + min + "ºC TempMax: " + max + "ºC");
		return sb.toString();
	}

	
    
}