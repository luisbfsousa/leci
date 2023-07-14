package aula03;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) {
        int n;
        boolean primo = false;
        Scanner input = new Scanner(System.in);

        do {
            System.out.print("Introduzir número: ");
            n = input.nextInt();
            if (n < 0) {
                System.out.println("Número inválido");
            }
        } while (n < 0);

        input.close();

        primo = Primo(n);

        if (primo) {
            int soma = 0;

            for (int i = 2; i <= n; i++) {
                if (Primo(i)) {
                    soma += i;
                }
            }
            System.out.println("Soma dos números: " + soma);
        } else {
            System.out.println("Não é primo");
        }
    }

    public static boolean Primo(int n) {
        if (n < 2)
            return false;

        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0)
                return false;
        }
        return true;
    }
}

//314159 = -237280124 , what!?
//131071 = 761593692
//314147 é numero primo mas nao assume
//314137 = -237594283, tf