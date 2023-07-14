package aula07.ex1;

public class Triangle extends Forma {
	private double side1;
	private double side2;
	private double side3;

	public Triangle(double side1, double side2, double side3, String colour) {
		if (validSide(side1) && validSide(side2) && validSide(side3) && validTriangle(side1, side2, side3)) {
			this.side1 = side1;
			this.side2 = side2;
			this.side3 = side3;
		}
		this.setColour(colour);
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

	public void setSides(double side1, double side2, double side3) {
		if (validSide(side1) && validSide(side2) && validSide(side3) && validTriangle(side1, side2, side3)) {
			this.side1 = side1;
			this.side2 = side2;
			this.side3 = side3;
		}
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) return true;
		if (obj == null) return false;
		if (getClass() != obj.getClass()) return false;

		Triangle triangle = (Triangle) obj;
		return this.side1 == triangle.side1 && this.side2 == triangle.side2 && this.side3 == triangle.side3 && this.getColour() == triangle.getColour();
	}

	public double getArea() {
		double p = (this.side1 + this.side2 + this.side3) / 2;
		return Math.sqrt(p * (p - this.side1) * (p - this.side2) * (p - this.side3));
	}

	public double getPerimeter() {
		return this.side1 + this.side2 + this.side3;
	}

	@Override
	public String toString() {
		return "Triangle with sides " + this.side1 + ", " + this.side2 + ", " + this.side3;
	}

	private boolean validSide(double side) {
		if (side <= 0) throw new IllegalArgumentException("Side cannot be negative.");
		return true;
	}

	private boolean validTriangle(double side1, double side2, double side3) {
		boolean triangleInequality = (side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1);
		if (!triangleInequality) throw new IllegalArgumentException("Triangle cannot be formed. Does not respect triangle inequality.");
		return true;
	}
}
