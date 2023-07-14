package aula07.ex1;
import java.util.Scanner;
import java.util.ArrayList;

public class ex1 {
	public static void main(String[] args) {
		int input;
		Scanner inputs = new Scanner(System.in);

		ArrayList<Circle> circles = new ArrayList<Circle>();
		ArrayList<Rectangle> rectangles = new ArrayList<Rectangle>();
		ArrayList<Triangle> triangles = new ArrayList<Triangle>();

		do {
			System.out.println("Geometric shapes operations:");
			System.out.println("1 - create new Circle");
			System.out.println("2 - create new Rectangle");
			System.out.println("3 - create new Triangle");
			System.out.println("4 - show current Circle");
			System.out.println("5 - show current Rectangle");
			System.out.println("6 - show current Triangle");
			System.out.println("7 - change Circle radius");
			System.out.println("8 - change Rectangle width and height");
			System.out.println("9 - change Triangle side1, side2 and side3");
			System.out.println("10 - show Circle area");
			System.out.println("11 - show Rectangle area");
			System.out.println("12 - show Triangle area");
			System.out.println("13 - show Circle perimeter");
			System.out.println("14 - show Rectangle perimeter");
			System.out.println("15 - show Triangle perimeter");
			System.out.println("16 - compare all circles");
			System.out.println("17 - compare all rectangles");
			System.out.println("18 - compare all triangles");
			System.out.println("0 - exit");

			do{
                System.out.println("Escolher operação");
                input = inputs.nextInt();
                if (input < 0 || input > 18){
                    System.out.println("Operação invalida");
                }
            }while (input < 0 || input > 18);

			switch (input) {
				case 1:
					System.out.println("Introduza o raio: ");
					double radius = inputs.nextDouble();
					System.out.println("Introduza a cor: ");
					String circleColour = inputs.next();
					Circle newCircle = new Circle(radius, circleColour);
					circles.add(newCircle);
					System.out.println("Círculo criado: " + newCircle);
					break;

				case 2:
					System.out.println("Introduza o comprimento: ");
					double width = inputs.nextDouble();
					System.out.println("Introduza a altura: ");
					double height = inputs.nextDouble();
					System.out.println("Introduza a cor: ");
					String rectColour = inputs.next();
					Rectangle newRectangle = new Rectangle(width, height, rectColour);
					rectangles.add(newRectangle);
					System.out.println("Retângulo criado: " + newRectangle);
					break;

				case 3:
					System.out.println("Introduza o lado1: ");
					double side1 = inputs.nextDouble();
					System.out.println("Introduza o lado2: ");
					double side2 = inputs.nextDouble();
					System.out.println("Introduza o lado3: ");
					double side3 = inputs.nextDouble();
					System.out.println("Introduza a cor: ");
					String triangleColour = inputs.next();
					Triangle newTriangle = new Triangle(side1, side2, side3, triangleColour);
					triangles.add(newTriangle);
					System.out.println("Triângulo criado: " + newTriangle);
					break;

				case 4:
					if (circles.size() <= 0) {
						System.out.println("Nenhum círculo foi criado.");
						break;
					}

					System.out.println("Círculo atual: " + circles.get(circles.size() - 1));
					break;

				case 5:
					if (rectangles.size() <= 0) {
						System.out.println("Nenhum retângulo foi criado.");
						break;
					}

					System.out.println("Retângulo atual: " + rectangles.get(rectangles.size() - 1));
					break;

				case 6:
					if (triangles.size() <= 0) {
						System.out.println("Nenhum triângulo foi criado.");
						break;
					}

					System.out.println("Triângulo atual: " + triangles.get(triangles.size() - 1));
					break;

				case 7:
					if (circles.size() <= 0) {
						System.out.println("Nenhum círculo foi criado.");
						break;
					}

					System.out.println("Introduza o raio: ");
					double radius2 = inputs.nextDouble();
					circles.get(circles.size() - 1).setRadius(radius2);
					System.out.println("Círculo atual: " + circles.get(circles.size() - 1));
					break;

				case 8:
					if (rectangles.size() <= 0) {
						System.out.println("Nenhum retângulo foi criado.");
						break;
					}

					System.out.println("Introduza o comprimento: ");
					double width2 = inputs.nextDouble();
					System.out.println("Introduza a altura: ");
					double height2 = inputs.nextDouble();
					rectangles.get(rectangles.size() - 1).setWidth(width2);
					rectangles.get(rectangles.size() - 1).setHeight(height2);
					System.out.println("Retângulo atual: " + rectangles.get(rectangles.size() - 1));
					break;

				case 9:
					if (triangles.size() <= 0) {
						System.out.println("Nenhum triângulo foi criado.");
						break;
					}

					System.out.println("Introduza o lado1: ");
					double side11 = inputs.nextDouble();
					System.out.println("Introduza o lado2: ");
					double side22 = inputs.nextDouble();
					System.out.println("Introduza o lado3: ");
					double side33 = inputs.nextDouble();
					triangles.get(triangles.size() - 1).setSides(side11, side22, side33);
					System.out.println("Triângulo atual: " + triangles.get(triangles.size() - 1));
					break;

				case 10:
					if (circles.size() <= 0) {
						System.out.println("Nenhum círculo foi criado.");
						break;
					}

					System.out.println("Área do Círculo: " + circles.get(circles.size() - 1).getArea());
					break;

				case 11:
					if (rectangles.size() <= 0) {
						System.out.println("Nenhum retângulo foi criado.");
						break;
					}

					System.out.println("Área do Retângulo: " + rectangles.get(rectangles.size() - 1).getArea());
					break;

				case 12:
					if (triangles.size() <= 0) {
						System.out.println("Nenhum triângulo foi criado.");
						break;
					}

					System.out.println("Área do Triângulo: " + triangles.get(triangles.size() - 1).getArea());
					break;

				case 13:
					if (circles.size() <= 0) {
						System.out.println("Nenhum círculo foi criado.");
						break;
					}

					System.out.println("Perímetro do Círculo: " + circles.get(circles.size() - 1).getPerimeter());
					break;

				case 14:
					if (rectangles.size() <= 0) {
						System.out.println("Nenhum retângulo foi criado.");
						break;
					}

					System.out.println("Perímetro do Retângulo: " + rectangles.get(rectangles.size() - 1).getPerimeter());
					break;

				case 15:
					if (triangles.size() <= 0) {
						System.out.println("Nenhum triângulo foi criado.");
						break;
					}
					
					System.out.println("Perímetro do Triângulo: " + triangles.get(triangles.size() - 1).getPerimeter());
					break;

				case 16:
					if (circles.size() <= 0) {
						System.out.println("Nenhum círculo foi criado.");
						break;
					}

					for (int i = 0; i < circles.size() - 1; i++) {
						for (int j = i + 1; j < circles.size(); j++) {
							if (circles.get(i).equals(circles.get(j))) {
								System.out.println("Os círculos " + circles.get(i) + " e " + circles.get(j) + " são iguais.");
							} else {
								System.out.println("Os círculos " + circles.get(i) + " e " + circles.get(j) + " são diferentes.");
							}
						}
					}

					break;

				case 17:
					if (rectangles.size() <= 0) {
						System.out.println("Nenhum retângulo foi criado.");
						break;
					}

					for (int i = 0; i < rectangles.size() - 1; i++) {
						for (int j = i + 1; j < rectangles.size(); j++) {
							if (rectangles.get(i).equals(rectangles.get(j))) {
								System.out.println("Os retângulos " + rectangles.get(i) + " e " + rectangles.get(j) + " são iguais.");
							} else {
								System.out.println("Os retângulos " + rectangles.get(i) + " e " + rectangles.get(j) + " são diferentes.");
							}
						}
					}

					break;

				case 18:
					if (triangles.size() <= 0) {
						System.out.println("Nenhum triângulo foi criado.");
						break;
					}

					for (int i = 0; i < triangles.size() - 1; i++) {
						for (int j = i + 1; j < triangles.size(); j++) {
							if (triangles.get(i).equals(triangles.get(j))) {
								System.out.println("Os triângulos " + triangles.get(i) + " e " + triangles.get(j) + " são iguais.");
							} else {
								System.out.println("Os triângulos " + triangles.get(i) + " e " + triangles.get(j) + " são diferentes.");
							}
						}
					}

					break;

				case 0:
					break;
			}

			System.out.println();
		} while (input != 0);

		inputs.close();
	}
}
