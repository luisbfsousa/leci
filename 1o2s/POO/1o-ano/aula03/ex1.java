package aula03;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args){
        double notap, notat, resultado;
        Scanner input = new Scanner(System.in);

        do{
            System.out.println("Nota prática");
            notap = input.nextDouble();
            if (notap < 0 || notap > 20){
                System.out.println("Nota inválida");
            }
        }
        while(notap < 0 || notap > 20);

        do{
            System.out.println("Nota teórica");
            notat = input.nextDouble();
            if (notat < 0 || notat > 20){
                System.out.println("Nota inválida");
            }
        }
        while(notat < 0 || notat > 20);

        input.close();

        notap = Math.round(notap);
        notat = Math.round(notat);

        if (notap < 7 || notat < 7) {
			System.out.println("66");
		} 
        else {
			resultado = Math.round(0.4 * notat + 0.6 * notap);
			System.out.println("A nota final é: " + resultado);
		}
    }
    
}
