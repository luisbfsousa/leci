package aula07.ex1;

public class Circle extends Forma {
	private double radius;

	public Circle(double radius, String colour) {
		if (validateRadius(radius)) this.radius = radius;
		this.setColour(colour);
	}

	public double getRadius() {
		return this.radius;
	}

	public void setRadius(double radius) {
		if (validateRadius(radius)) this.radius = radius;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) return true;
		if (obj == null) return false;
		if (getClass() != obj.getClass()) return false;

		Circle circle = (Circle) obj;
		return this.radius == circle.radius && this.getColour() == circle.getColour();
	}

	public double getArea() {
		return Math.PI * radius * radius;
	}

	public double getPerimeter() {
		return 2 * Math.PI * radius;
	}

	@Override
	public String toString() {
		return "Circle with radius " + this.radius;
	}

	private boolean validateRadius(double radius) {
		if (radius < 0) throw new IllegalArgumentException("Radius cannot be negative.");
		return true;
	}
}