package aula02;
import java.util.Scanner;

public class ex8 {
    public static void main(String[] args){
        double cata, catb, hipc, a;
        Scanner input = new Scanner(System.in);

        cata = 0; catb = 0;

        while(cata <= 0){
            System.out.print("Introduzir cateto A: ");
            cata = input.nextDouble();
            if(cata <= 0){
                System.out.println("Medida Inválida!");
            }
        }

        while(catb <= 0){
            System.out.print("Introduzir cateto B: ");
            catb = input.nextDouble();
            if(catb <= 0){
                System.out.println("Medida Inválida!");
            }
        }

        hipc = Math.sqrt(cata*cata + catb*catb);
        a = Math.toDegrees(Math.cos(cata/hipc));

        System.out.println("Valor da hipotenusa: " + hipc);
        System.out.println("Valor do ângulo entre o cateto A e a hipotenusa: " + a);

        input.close();
    }
}
