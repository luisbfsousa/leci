package aula04.ex1;

public class Circulo {
	private double raio;

	public Circulo(double raio) {
		if (!validraio(raio)) {
			throw new IllegalArgumentException("O raio nao pode ser negativo.");
		}

		this.raio = raio;
	}

	public double getraio() {
		return this.raio;
	}

	public void setraio(double raio) {
		if (!validraio(raio)) {
			throw new IllegalArgumentException("O raio nao pode ser negativo.");
		}

		this.raio = raio;
	}

	public boolean equals(Circulo circulo) {
		return this.raio == circulo.getraio();
	}

	public double getArea() {
		return Math.PI * raio * raio;
	}

	public double getPerimeter() {
		return 2 * Math.PI * raio;
	}

	public String toString() {
		return "Raio do Circulo: " + this.raio;
	}

	private boolean validraio(double raio) {
		return raio >= 0;
	}
}
