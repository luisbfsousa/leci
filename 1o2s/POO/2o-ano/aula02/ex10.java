package aula02;
import java.util.Scanner;

public class ex10 {
    public static void main(String[] args){
        double numero, primeiroNumero, contador = 0, soma = 0, maximo = Double.NEGATIVE_INFINITY, 
               minimo = Double.POSITIVE_INFINITY, media;
        Scanner input = new Scanner(System.in);

        System.out.print("Digite um número real: ");
        primeiroNumero = input.nextDouble();
        numero = primeiroNumero;

        while (numero != primeiroNumero) {
            contador++;
            soma += numero;
            if (numero > maximo) {
                maximo = numero;
            }
            if (numero < minimo) {
                minimo = numero;
            }
            System.out.print("Digite outro número real ou " + primeiroNumero + " para terminar: ");
            numero = input.nextDouble();
        }

        input.close();

        if (contador > 0) {
            media = soma / contador;
            System.out.println("O valor máximo é " + maximo);
            System.out.println("O valor mínimo é " + minimo);
            System.out.println("A média é " + media);
            System.out.println("Foram lidos " + contador + " números.");
        } else {
            System.out.println("Não foi lido nenhum número.");
        } 
    }
}