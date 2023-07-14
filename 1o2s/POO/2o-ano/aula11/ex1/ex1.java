package aula11.ex1;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.TreeMap;
import java.util.Map;
import java.util.Scanner;

public class ex1{
    public static void main (String[] args) throws FileNotFoundException{
        ArrayList<String> lista = new ArrayList<>();
        Map<String, Map<String, Integer>> mapa = new TreeMap<>();

        Lista(lista, "aula11\\ex1\\major.txt" );

        for(int i = 0; i<lista.size()-1; i++){
            Map<String, Integer> map2 = new TreeMap<>();
            mapa.put(lista.get(i), map2);
        }

        for(int i = 0; i<lista.size()-1; i++){
            String primaria = lista.get(i);
            String secundaria = lista.get(i+1);
            mapa.get(primaria).put(secundaria, mapa.get(primaria).getOrDefault(secundaria, 0) + 1);
        }

        for (String par : mapa.toString().substring(1, mapa.toString().length()-2).split("}, ")) {
            System.out.println(par + "}");
        }
    }

    private static void Lista(ArrayList<String> lista, String caminho) throws FileNotFoundException {
        try (Scanner input = new Scanner(new File(caminho), "UTF-8")) { //new Scanner(new File(caminho, "UTF-8")) corrigir este erro para leitura exata de todas as words
            String words = "";
            while (input.hasNext()) {
                words = words + " " + input.next();
            }

            for (String word : words.toLowerCase().replaceAll("[\\t\\n\\.\\,\\:\\'\\‘\\’\\;\\?\\!\\-\\*\\{\\}\\=\\+\\&\\/\\\\(\\)\\[\\]\\''\\\"\\']", " ").trim().split("\\s+")) {
                if (word.length() > 2) {
                    lista.add(word);
                }
            }
        }
    }
}