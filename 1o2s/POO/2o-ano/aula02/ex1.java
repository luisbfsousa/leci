package aula02;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args){
        double km, miles;
        Scanner input = new Scanner(System.in);

        System.out.print("Distância em Km: ");
        km = input.nextDouble();
        input.close();
        miles = km/1.609;   

        System.out.println("Distância em Milhas: " + miles);
    }
}
