package aula02;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args){
        double b, j;
        final int m = 3;
        Scanner input = new Scanner(System.in);

        System.out.println("Investimento inicial: ");
        b = input.nextDouble();
        System.out.println("Juros: ");
        j = input.nextDouble();
        input.close();

        for (int i=1; i<= m; i++) {
            b += b*(j/100);
        }

        System.out.println("Balanço ao fim de " + m + " meses (EUR): " + b);

        
    }

    
}
