package aula02;
import java.util.Scanner;

public class ex2{
    public static void main(String[] args){
        double f, c;
        Scanner input = new Scanner(System.in);

        System.out.print("Temperatura em Celcius: ");
        c = input.nextDouble();
        input.close();
        f = 1.8 * c + 32 ;

        System.out.println("Temperatura em Fahrenheit: " + f);

        
    }
}
