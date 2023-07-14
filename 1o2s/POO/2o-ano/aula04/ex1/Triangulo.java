package aula04.ex1;


public class Triangulo {
	private double lado1;
	private double lado2;
	private double lado3;

	public Triangulo(double lado1, double lado2, double lado3) {
		if (!validlado(lado1) || !validlado(lado2) || !validlado(lado3)) {
			throw new IllegalArgumentException("Nenhum lado pode ser negativo");
		}

		if (!validtriangulo(lado1, lado2, lado3)) {
			throw new IllegalArgumentException("O triangulo nao pode ser formado.");
		}

		this.lado1 = lado1;
		this.lado2 = lado2;
		this.lado3 = lado3;
	}

	public double getlado1() {
		return this.lado1;
	}

	public double getlado2() {
		return this.lado2;
	}

	public double getlado3() {
		return this.lado3;
	}

	public void setlado1(double lado1) {
		if (!validlado(lado1)) {
			throw new IllegalArgumentException("O lado nao pode ser negativo.");
		}

		if (!validtriangulo(lado1, this.lado2, this.lado3)) {
			throw new IllegalArgumentException("triangulo cannot be formed. Does not respect triangulo inequality.");
		}

		this.lado1 = lado1;
	}

	public void setlado2(double lado2) {
		if (!validlado(lado2)) {
			throw new IllegalArgumentException("O lado nao pode ser negativo.");
		}

		if (!validtriangulo(this.lado1, lado2, this.lado3)) {
			throw new IllegalArgumentException("triangulo cannot be formed. Does not respect triangulo inequality.");
		}

		this.lado2 = lado2;
	}

	public void setlado3(double lado3) {
		if (!validlado(lado3)) {
			throw new IllegalArgumentException("O lado nao pode ser negativo.");
		}

		if (!validtriangulo(this.lado1, this.lado2, lado3)) {
			throw new IllegalArgumentException("O triangulo nao pode ser formado.");
		}

		this.lado3 = lado3;
	}

	public boolean equals(Triangulo triangulo) {
		return this.lado1 == triangulo.getlado1() && this.lado2 == triangulo.getlado2() && this.lado3 == triangulo.getlado3();
	}

	public double getArea() {
		double p = (this.lado1 + this.lado2 + this.lado3) / 2;
		return Math.sqrt(p * (p - this.lado1) * (p - this.lado2) * (p - this.lado3));
	}

	public double getPerimeter() {
		return this.lado1 + this.lado2 + this.lado3;
	}

	public String toString() {
		return "Lados do Triangulo: " + this.lado1 + " , " + this.lado2 + " , " + this.lado3;
	}

	private boolean validlado(double lado) {
		return lado >= 0;
	}

	private boolean validtriangulo(double lado1, double lado2, double lado3) {
		return (lado1 + lado2 > lado3) && (lado1 + lado3 > lado2) && (lado2 + lado3 > lado1);
	}
}
