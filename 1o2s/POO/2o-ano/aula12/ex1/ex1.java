package aula12.ex1;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) throws FileNotFoundException {

        Scanner input = new Scanner(new FileInputStream("aula12\\ex1\\himym.txt"));

        HashSet<String> palavras = new HashSet<>();
        int contagem = 0;
        while (input.hasNext()) {
            String palavra = input.next();
            palavras.add(palavra);
            contagem++;
        }

        System.out.println("Número Total de Palavras: " + contagem);
        System.out.println("Número de Diferentes Palavras: " + palavras.size());
    }
}
