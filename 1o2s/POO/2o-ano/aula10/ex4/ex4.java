package aula10.ex4;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) throws IOException {
        Set<String> palavras = new HashSet<>();
        carregarSet(palavras, "aula10\\ex4\\words.txt");
        palavraTerminaCom(palavras, "s");
        removerPalavrasComSinais(palavras);
        System.out.println(palavras);
    }

    public static void carregarSet(Set<String> words, String caminho) throws IOException {
        Scanner input = new Scanner(new FileReader(caminho));
        while (input.hasNext()) {
            String word = input.next();
            if (word.length() > 2) {
                words.add(word);
            }
        }
    }

    public static void removerPalavrasComSinais(Set<String> palavras) {
        Set<String> set_temporario = new HashSet<>();
        for (String palavra : palavras) {
            if (palavra.matches("[a-zA-Z]+")) {
                set_temporario.add(palavra);
            } 
        }
        palavras.clear();
        palavras.addAll(set_temporario);
    }

    public static void palavraTerminaCom(Set<String> palavras, String termina_com) {
        for (String palavra : palavras) {
            if (palavra.endsWith(termina_com)) {
                System.out.println(palavra);
            }
        }
    }


}
