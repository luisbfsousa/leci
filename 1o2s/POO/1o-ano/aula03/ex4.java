package aula03;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args){
        double p, soma = 0, max, min, temp, media;
		int index = 1;

		Scanner input = new Scanner(System.in);

        System.out.println("Introduza um número inteiro: ");
		p = input.nextDouble();
		max = p;
		min = p;
		soma += p;

		do {
            System.out.println("Introduza um número inteiro: ");
			temp = input.nextDouble();

			if (temp > max)
				max = temp;
			if (temp < min)
				min = temp;
			soma += temp;

			index++;
		} while (p != temp);
        
        input.close();

		media = soma / index;

		System.out.printf("Máximo: %.2f\nMínimo: %.2f\nMédia: %.2f\nNúmero de elementos: %d\n", max, min, media, index);
		
    }  
}
