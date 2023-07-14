package aula02;
import java.util.Scanner;

public class ex3 {
    public static void main(String[] args){
        double q, m, ti, tf;
        Scanner input = new Scanner(System.in);

        System.out.println("Massa água: ");
        m = input.nextDouble();
        System.out.println("Temperatura inicial: ");
        ti = input.nextDouble();
        System.out.println("Temperatura final: ");
        tf = input.nextDouble();
        input.close();

        q = m*(tf-ti)*4184;

        System.out.println("Energia necessária: " + q);

    }
    
}
