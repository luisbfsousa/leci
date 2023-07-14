package aula04;
import java.util.Scanner;
import java.lang.String;

public class ex2 {
    public static void main(String [] args){
        Scanner input = new Scanner(System.in);

        System.out.println("Introduzir frase: ");
        String frase = input.nextLine();

        input.close();

        System.out.println(countDigits("Uma Frase Qualquer"));
        System.out.println("Digitos: " + countDigits(frase));
        System.out.println("Espacos: " + countSpaces(frase));
        System.out.println("minúsculas? " + isLowercase(frase));
        System.out.println("em espaços duplicados: " + removeSubsequentWhitespace(frase));
        System.out.println("palíndromo? " + isPalindrome(frase));
    }

    


    public static int countDigits(String s) {
        int count = 0;

        for (int i = 0; i < s.length(); i++) {
            if (Character.isDigit(s.charAt(i))) count++;
        }

        return count;
    }

    public static int countSpaces(String s) {
        int count = 0;

        for (int i = 0; i < s.length(); i++) {
            if (Character.isWhitespace(s.charAt(i))) count++;
        }

        return count;
    }

    public static boolean isLowercase(String s) {
        for (int i = 0; i < s.length(); i++) {
            if (!Character.isLowerCase(s.charAt(i))) return false;
        }

        return true;
    }

    public static String removeSubsequentWhitespace(String s) {
        String newString = "";

        for (int i = 0; i < s.length(); i++) {
            if (Character.isWhitespace(s.charAt(i)) &&
                Character.isWhitespace(newString.charAt(newString.length() - 1)))
                continue;

            newString += s.charAt(i);
        }

        return newString;
    }

    public static boolean isPalindrome(String s) {
        String newString = "";

        for (int i = 0; i < s.length(); i++) {
            if (Character.isWhitespace(s.charAt(i))) continue;

            newString += s.charAt(i);
        }

        for (int i = 0; i < newString.length(); i++) {
            if (newString.charAt(i) != newString.charAt(newString.length() - 1 - i))
                return false;
        }

        return true;
    }
}
