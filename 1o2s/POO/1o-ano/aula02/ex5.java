package aula02;
import java.util.Scanner;

public class ex5 {
    public static void main(String[] args){
        double v1, v2, d1, d2, vm;
        Scanner input = new Scanner(System.in);

        System.out.println("Primeira Distância: ");
        d1 = input.nextDouble();
        System.out.println("Velocidade da primeira: ");
        v1 = input.nextDouble();
        System.out.println("Segunda Distância: ");
        d2 = input.nextDouble();
        System.out.println("Velocidade da segunda: ");
        v2 = input.nextDouble();
        input.close();

        vm = (d1+d2)/((d1/v1)+(d2/v2));
        System.out.println("A velocidade média é " + vm + " m/s");

    }
    
}
