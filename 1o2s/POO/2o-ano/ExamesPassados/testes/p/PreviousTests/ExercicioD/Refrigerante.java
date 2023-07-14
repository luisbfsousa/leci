package ExercicioD;

public class Refrigerante extends Alimento implements TemperaturaInterface {

    private int min, max;

    public Refrigerante(String nome, double preço, int calorias100Gramas, String dataValidade)   {
        super(nome, dataValidade, calorias100Gramas, preço);
        
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
		Refrigerante other = (Refrigerante) obj;
		if (max != other.max)
			return false;
		if (min != other.min)
			return false;
		return true;
	}

	@Override
	public String toString() {
		//return "Refrigerante [max=" + max + ", min=" + min + "]";
		StringBuilder sb = new StringBuilder();
		sb.append("REFRIGERANTE " + super.toString() + " TempMin: " + min + "ºC TempMax: " + max + "ºC");
		return sb.toString();
	}

	

    
    
}