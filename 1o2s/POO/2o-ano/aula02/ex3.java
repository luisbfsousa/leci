package aula02;
import java.util.Scanner;

public class ex3 {
    public static void main(String[] args){
        double  m, q, ti, tf;
        Scanner input = new Scanner(System.in);

        System.out.print("Massa? ");
        m = input.nextDouble();
        System.out.print("Temperatura Inicial? ");
        ti = input.nextDouble();
        System.out.print("Temperatura Final? ");
        tf = input.nextDouble();
        input.close();

        q = m * (tf - ti) * 4148;

        System.out.print("Energia em Joules = " + q + " J");

    }
}
