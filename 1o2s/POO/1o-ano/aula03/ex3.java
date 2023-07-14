package aula03;
import java.util.Scanner;

public class ex3 {
    public static void main(String[] args){
        int n;
        boolean primo = false;
        Scanner input = new Scanner(System.in);

        do{
            System.out.println("Introduzir número");
            n = input.nextInt();
            if (n < 0){
                System.out.println("Número inválido");
            }
        }
        while (n<0);

        input.close();

        primo = isPrime(n);

        if (primo){
            System.out.println("É primo");
        }
        else{
            System.out.println("Não é primo");
        }
    } 

    public static boolean isPrime(int n) {
        if (n < 2)
            return false;

        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0)
                return false;
        }
        return true;
    }
     
}
