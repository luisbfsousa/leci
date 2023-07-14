package aula03;
import java.util.Scanner;

public class ex2 {
    public static void main(String[] args){
        int n;
        Scanner input = new Scanner(System.in);

        do{
            System.out.println("Introduzir número para iniciar a contagem decrescente: ");
            n = input.nextInt();
            if (n < 0){
                System.out.println("Número inválido");
            }
        }
        while(n < 0);

        input.close();

        for (int i = n; i >= 0; i--) System.out.println(i);


    }
}