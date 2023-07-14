package aula11.ex1;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import java.util.Map;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args)throws IOException{
        ArrayList<String> list = new ArrayList<>();
        Map<String, Map<String, Integer>> map = new TreeMap<>();

        Lista(list, "C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\major.txt");
        
        for(int i = 0; i<list.size()-1; i++){
            Map<String, Integer> map2 = new TreeMap<>();
            map.put(list.get(i), map2);
        }

        for(int i = 0; i<list.size()-1; i++){
            String primaria = list.get(i);
            String secundaria = list.get(i+1);
            map.get(primaria).put(secundaria, map.get(primaria).getOrDefault(secundaria, 0) + 1);
        }

        for (String par : map.toString().substring(1, map.toString().length()-2).split("}, ")) {
            System.out.println(par + "}");
        }
    }

    public static void Lista(ArrayList<String> lista, String caminho) throws IOException{
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

    