package aula05.ex3;
import java.util.Scanner;

public class ex3 {
	public static void main(String[] args) {
		int input;
		Scanner inputs = new Scanner(System.in);
		Circle circle = new Circle(1);
		Rectangle rectangle = new Rectangle(1, 1);
		Triangle triangle = new Triangle(1, 1, 1);

		do {
			System.out.println("Operacoes das formas geometricas:");
			System.out.println("1 - Criar novo circulo");
			System.out.println("2 - Criar novo retangulo");
			System.out.println("3 - Criar novo triangulo");
			System.out.println("4 - Mostrar circulo atual");
			System.out.println("5 - Mostrar retangulo atual");
			System.out.println("6 - Mostrar triangulo atual");
			System.out.println("7 - Mudar o raio do circulo");
			System.out.println("8 - Mudar medidas do retangulo");
			System.out.println("9 - Mudar os lados do triangulo");
			System.out.println("10 - Mostrar a area do circulo");
			System.out.println("11 - Mostrar a area do retangulo");
			System.out.println("12 - Mostrar a area do triangulo");
			System.out.println("13 - Mostrar o perimetro do circulo");
			System.out.println("14 - Mostrar o perimetro do retangulo");
			System.out.println("15 - Mostrar o perimetro do triangulo");
			System.out.println("0 - exit");

            
            do{
                System.out.println("Escolher operação");
                input = inputs.nextInt();
                if (input < 0 || input > 15){
                    System.out.println("Operação invalida");
                }
            }while (input < 0 || input > 15);
			

			switch (input) {
				case 1:
                    System.out.println("Introduza o raio: ");
					double radius = inputs.nextDouble();
					circle = new Circle(radius);
					System.out.println("Circulo criado: " + circle);
					break;

				case 2:
                    System.out.println("Introduza o comprimento: ");
					double width = inputs.nextDouble();
                    System.out.println("Introduza a largura: ");
					double height = inputs.nextDouble();
					rectangle = new Rectangle(width, height);
					System.out.println("Retangulo criado: " + rectangle);
					break;

				case 3:
                    System.out.println("Introduza o lado 1: ");
                    double side1 = inputs.nextDouble();
                    System.out.println("Introduza o lado 2: ");
                    double side2 = inputs.nextDouble();
                    System.out.println("Introduza o lado 3: ");
                    double side3 = inputs.nextDouble();
					triangle = new Triangle(side1, side2, side3);
					System.out.println("Triangle criado: " + triangle);
					break;

				case 4:
					System.out.println("Circulo atual: " + circle.toString());
					break;

				case 5:
					System.out.println("Retangulo atual: " + rectangle.toString());
					break;

				case 6:
					System.out.println("Triangulo atual: " + triangle.toString());
					break;

				case 7:
                    System.out.println("Introduza o raio: ");
                    double radius2 = inputs.nextDouble();
					circle.setRadius(radius2);
					System.out.println("Circulo atual: " + circle.toString());
					break;

				case 8:
                    System.out.println("Introduza o comprimento: ");
                    double width2 = inputs.nextDouble();
                    System.out.println("Introduza a altura: ");
                    double height2 = inputs.nextDouble();
					rectangle.setWidth(width2);
					rectangle.setHeight(height2);
					System.out.println("Retangulo atual: " + rectangle.toString());
					break;

				case 9:
                    System.out.println("Introduza o lado 1: ");
                    double side11 = inputs.nextDouble();
                    System.out.println("Introduza o lado 2: ");
                    double side22 = inputs.nextDouble();
                    System.out.println("Introduza o lado 3: ");
                    double side33 = inputs.nextDouble();
					triangle.setSide1(side11);
					triangle.setSide2(side22);
					triangle.setSide3(side33);
					System.out.println("Triangulo atual: " + triangle.toString());
					break;

				case 10:
					System.out.println("area do circulo: " + circle.getArea());
					break;

				case 11:
					System.out.println("area do retangulo: " + rectangle.getArea());
					break;

				case 12:
					System.out.println("area do triangulo: " + triangle.getArea());
					break;

				case 13:
					System.out.println("perimetro do circulo: " + circle.getPerimeter());
					break;

				case 14:
					System.out.println("perimetro do retangulo: " + rectangle.getPerimeter());
					break;

				case 15:
					System.out.println("perimetro do triangulo: " + triangle.getPerimeter());
					break;

				case 0:
					break;
			}
		} while (input != 0);

        inputs.close();
	}
}