package aula05.ex3;


public class Triangle {
	private double side1;
	private double side2;
	private double side3;

	public Triangle(double side1, double side2, double side3) {
		if (!validSide(side1) || !validSide(side2) || !validSide(side3)) {
			throw new IllegalArgumentException("Neither side can be negative");
		}

		if (!validTriangle(side1, side2, side3)) {
			throw new IllegalArgumentException("Triangle cannot be formed. Does not respect triangle inequality.");
		}

		this.side1 = side1;
		this.side2 = side2;
		this.side3 = side3;
	}

	public double getSide1() {
		return this.side1;
	}

	public double getSide2() {
		return this.side2;
	}

	public double getSide3() {
		return this.side3;
	}

	public void setSide1(double side1) {
		if (!validSide(side1)) {
			throw new IllegalArgumentException("Side cannot be negative.");
		}

		if (!validTriangle(side1, this.side2, this.side3)) {
			throw new IllegalArgumentException("Triangle cannot be formed. Does not respect triangle inequality.");
		}

		this.side1 = side1;
	}

	public void setSide2(double side2) {
		if (!validSide(side2)) {
			throw new IllegalArgumentException("Side cannot be negative.");
		}

		if (!validTriangle(this.side1, side2, this.side3)) {
			throw new IllegalArgumentException("Triangle cannot be formed. Does not respect triangle inequality.");
		}

		this.side2 = side2;
	}

	public void setSide3(double side3) {
		if (!validSide(side3)) {
			throw new IllegalArgumentException("Side cannot be negative.");
		}

		if (!validTriangle(this.side1, this.side2, side3)) {
			throw new IllegalArgumentException("Triangle cannot be formed. Does not respect triangle inequality.");
		}

		this.side3 = side3;
	}

	public boolean equals(Triangle triangle) {
		return this.side1 == triangle.getSide1() && this.side2 == triangle.getSide2() && this.side3 == triangle.getSide3();
	}

	public double getArea() {
		double p = (this.side1 + this.side2 + this.side3) / 2;
		return Math.sqrt(p * (p - this.side1) * (p - this.side2) * (p - this.side3));
	}

	public double getPerimeter() {
		return this.side1 + this.side2 + this.side3;
	}

	public String toString() {
		return "Triangle with sides " + this.side1 + ", " + this.side2 + ", " + this.side3;
	}

	private boolean validSide(double side) {
		return side >= 0;
	}

	private boolean validTriangle(double side1, double side2, double side3) {
		return (side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1);
	}
}
