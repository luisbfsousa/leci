package aula04.ex1;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args){
        int opcao;
        Scanner input = new Scanner(System.in);
        Circulo circulo = new Circulo(1);
        Retangulo retangulo = new Retangulo(1,1);
        Triangulo triangulo = new Triangulo(1,1,1);

        do{
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
			System.out.println("0 - Sair");

            do{
                System.out.print("Introduzir opcao: ");
                opcao = input.nextInt();
                if(opcao <0 || opcao > 15){
                    System.out.println("Opcao invalida");
                }
            }while(opcao <0 || opcao > 15);

            switch(opcao){
                case 1:
                    System.out.println("Introduza o raio: ");
					double raio = input.nextDouble();
					circulo = new Circulo(raio);
					System.out.println("Circulo criado: " + circulo);
					break;

				case 2:
                    System.out.println("Introduza o largura: ");
					double largura = input.nextDouble();
                    System.out.println("Introduza a largura: ");
					double altura = input.nextDouble();
					retangulo = new Retangulo(largura, altura);
					System.out.println("Retangulo criado: " + retangulo);
					break;

				case 3:
                    System.out.println("Introduza o lado 1: ");
                    double lado1 = input.nextDouble();
                    System.out.println("Introduza o lado 2: ");
                    double lado2 = input.nextDouble();
                    System.out.println("Introduza o lado 3: ");
                    double lado3 = input.nextDouble();
					triangulo = new Triangulo(lado1, lado2, lado3);
					System.out.println("triangulo criado: " + triangulo);
					break;

				case 4:
					System.out.println("Circulo atual: " + circulo.toString());
					break;

				case 5:
					System.out.println("Retangulo atual: " + retangulo.toString());
					break;

				case 6:
					System.out.println("Triangulo atual: " + triangulo.toString());
					break;

				case 7:
                    System.out.println("Introduza o raio: ");
                    double raio2 = input.nextDouble();
					circulo.setraio(raio2);
					System.out.println("Circulo atual: " + circulo.toString());
					break;

				case 8:
                    System.out.println("Introduza o largura: ");
                    double largura2 = input.nextDouble();
                    System.out.println("Introduza a altura: ");
                    double altura2 = input.nextDouble();
					retangulo.setlargura(largura2);
					retangulo.setaltura(altura2);
					System.out.println("Retangulo atual: " + retangulo.toString());
					break;

				case 9:
                    System.out.println("Introduza o lado 1: ");
                    double lado11 = input.nextDouble();
                    System.out.println("Introduza o lado 2: ");
                    double lado22 = input.nextDouble();
                    System.out.println("Introduza o lado 3: ");
                    double lado33 = input.nextDouble();
					triangulo.setlado1(lado11);
					triangulo.setlado2(lado22);
					triangulo.setlado3(lado33);
					System.out.println("Triangulo atual: " + triangulo.toString());
					break;

				case 10:
					System.out.println("area do circulo: " + circulo.getArea());
					break;

				case 11:
					System.out.println("area do retangulo: " + retangulo.getArea());
					break;

				case 12:
					System.out.println("area do triangulo: " + triangulo.getArea());
					break;

				case 13:
					System.out.println("perimetro do circulo: " + circulo.getPerimeter());
					break;

				case 14:
					System.out.println("perimetro do retangulo: " + retangulo.getPerimeter());
					break;

				case 15:
					System.out.println("perimetro do triangulo: " + triangulo.getPerimeter());
					break;

				case 0:
					break;
            }
        }while(opcao!=0);

        input.close();
    }
}