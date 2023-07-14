package aula04.ex1;


public class Retangulo {
	private double largura;
	private double altura;

	public Retangulo(double largura, double altura) {
		if (!validlargura(largura) || !validaltura(altura)) {
			throw new IllegalArgumentException("largura or altura cannot be negative.");
		}

		this.largura = largura;
		this.altura = altura;
	}

	public double getlargura() {
		return this.largura;
	}

	public double getaltura() {
		return this.altura;
	}

	public void setlargura(double largura) {
		if (!validlargura(largura)) {
			throw new IllegalArgumentException("A altura nao pode ser negativa.");
		}

		this.largura = largura;
	}

	public void setaltura(double altura) {
		if (!validaltura(altura)) {
			throw new IllegalArgumentException("A altura nao pode ser negativa.");
		}

		this.altura = altura;
	}

	public boolean equals(Retangulo retangulo) {
		return this.largura == retangulo.getlargura() && this.altura == retangulo.getaltura();
	}

	public double getArea() {
		return this.largura * this.altura;
	}

	public double getPerimeter() {
		return 2 * (this.largura + this.altura);
	}

	public String toString() {
		return "Largura: " + this.largura + " , e altura: " + this.altura;
	}

	private boolean validlargura(double largura) {
		return largura >= 0;
	}

	private boolean validaltura(double altura) {
		return altura >= 0;
	}
}
