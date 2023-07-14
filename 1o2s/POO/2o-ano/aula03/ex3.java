package aula03;
import java.util.Scanner;
import java.util.Random;

public class ex3 {
    public static void main(String[] args){
        int n, t = 0, numero;
        Scanner input = new Scanner(System.in);
		
        numero = new Random().nextInt(100) + 1;

        do{
            do{
                System.out.print("Introduzir número: ");
                n = input.nextInt();
                if(n < 0 || n > 100 ){
                    System.out.println("numero inválido");
                }
            }
            while(n < 0 || n > 100 );

            t++;
            
            if (n > numero){
                System.out.println("O número secreto é menor que o seu numero");
            }
            else{
                System.out.println("O número secreto é maior que o seu numero");
            }
        }
        while(n != numero);

        input.close();

        System.out.println();
		System.out.println("Acertou! O número era (" + numero + ")");
		System.out.println("Tentativas: " + t);
    }
    
}