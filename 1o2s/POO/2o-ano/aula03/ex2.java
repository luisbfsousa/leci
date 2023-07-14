package aula03;
import java.util.Scanner;

public class ex2 {
    public static void main(String[] args){
        double inv, juros;
        final int mes = 12;
        Scanner input = new Scanner(System.in);

        do{
            System.out.print("Montante investido: ");
            inv = input.nextDouble();
            if (inv % 1000 != 0){
                System.out.println("Montante tem que ser múltiplo de 1000");
            }
        }
        while (inv % 1000 != 0);

        do{
            System.out.print("Juros mensais: ");
            juros = input.nextDouble();
            if (juros < 0 || juros > 5){
                System.out.println("Juro tem valor máximo de 5%");
            }
        }
        while (juros < 0 || juros > 5);

        input.close();
        

        for (int i = 1; i <= mes; i++){
            inv += inv * (juros/100);
        }

        System.out.println("Balanço final: " + inv);
    }
}
