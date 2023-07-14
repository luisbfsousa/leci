package aula02;
import java.util.Scanner;
import java.lang.Math;

public class ex8 {
    public static void main(String[] args){
        double a,b,h,ang;
        Scanner input = new Scanner(System.in);

        System.out.println("Cateto A: ");
        a = input.nextDouble();
        System.out.println("Cateto B: ");
        b = input.nextDouble();
        input.close();

        h = Math.sqrt(a*a + b*b);
        ang = Math.toDegrees(Math.cos(a/h));

        System.out.println("Valor da hipotenusa: " + h);
        System.out.println("Valor do ângulo entre o cateto A e a hipotenusa: " + ang);

    }
    
}
