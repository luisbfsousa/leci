package random;
import java.util.Scanner;

public class string {
    public static void main(String [] args){
        Scanner input = new Scanner(System.in);

        System.out.println("Introduzir frase: ");
        String frase = input.nextLine();
        input.close();
        
        String [] s1 = frase.split("[\\W]");
        System.out.println(s1);

        for (String s:s1){
            System.out.println("\"" + s +"\"" + " FirstChar: " + s.charAt(0));
        }

    }
}
