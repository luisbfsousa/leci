package aula04;
import java.util.Scanner;
import java.lang.String;

public class ex3 {
    public static void main(String [] args){
        Scanner input = new Scanner(System.in);

        System.out.println("Introduzir frase: ");
        String frase = input.nextLine();
        input.close();
        
        String [] s1 = frase.split("[\\W]");
        String acronimo = " ";

        for (String s:s1){
            if (s.length()>3){
                acronimo += s.charAt(0);
            }
        }

        System.out.println("Acronimo: " + acronimo);




    }
}
