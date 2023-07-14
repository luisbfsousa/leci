package aula02;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args){
        double mi, taxa, f;
        Scanner input = new Scanner(System.in);

        System.out.print("Montante inicial? ");
        mi = input.nextDouble();

        taxa = 0;
        while(taxa <= 0 || taxa > 100){
            System.out.print("Taxa de juro mensal ");
            taxa = input.nextDouble();
            if (taxa <= 0 || taxa > 100){
                System.out.println("Taxa de juros invalida");
            }
        }
        input.close();

        taxa = taxa/100;
        f = mi + (mi*taxa)*3;

        System.out.print("Valor Final " + f);
    }
}
