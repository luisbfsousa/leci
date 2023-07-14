package aula02;
import java.util.Scanner;

public class ex6 {
    public static void main(String[] args){
        int s, m, h, d;
        Scanner input = new Scanner(System.in);

        s = -1;
        while(s < 0){
            System.out.print("Introduzir nº de segundos ");
            s = input.nextInt();
            if(s < 0){
                System.out.println("Tempo inválido");
            }
        }
        input.close();

        d = s / (24 * 3600);
        s %= (24 * 3600);
        h = s / 3600;
        s %= 3600;
        m = s / 60;
        s %= 60;

        System.out.println(d + " dias e " + h + ":" + m + ":" + s );


    }
}
