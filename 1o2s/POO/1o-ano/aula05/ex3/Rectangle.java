package aula05.ex3;


public class Rectangle {
	private double width;
	private double height;

	public Rectangle(double width, double height) {
		if (!validWidth(width) || !validHeight(height)) {
			throw new IllegalArgumentException("Width or height cannot be negative.");
		}

		this.width = width;
		this.height = height;
	}

	public double getWidth() {
		return this.width;
	}

	public double getHeight() {
		return this.height;
	}

	public void setWidth(double width) {
		if (!validWidth(width)) {
			throw new IllegalArgumentException("Width cannot be negative.");
		}

		this.width = width;
	}

	public void setHeight(double height) {
		if (!validHeight(height)) {
			throw new IllegalArgumentException("Height cannot be negative.");
		}

		this.height = height;
	}

	public boolean equals(Rectangle rectangle) {
		return this.width == rectangle.getWidth() && this.height == rectangle.getHeight();
	}

	public double getArea() {
		return this.width * this.height;
	}

	public double getPerimeter() {
		return 2 * (this.width + this.height);
	}

	public String toString() {
		return "Rectangle with width " + this.width + " and height " + this.height;
	}

	private boolean validWidth(double width) {
		return width >= 0;
	}

	private boolean validHeight(double height) {
		return height >= 0;
	}
}
