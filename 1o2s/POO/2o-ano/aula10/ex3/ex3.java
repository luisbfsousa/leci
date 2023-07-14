package aula10.ex3;

import java.util.Map;
import java.util.HashMap;
import java.util.ArrayList;

public class ex3 {
    public static void main(String[] args) {
        System.out.println(posicoesCaracteres("Hello World"));
    }

    public static String posicoesCaracteres(String s) {
        Map<Character, ArrayList<Integer>> mapa = new HashMap<>();

        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (!mapa.containsKey(c)) {
                mapa.put(c, new ArrayList<Integer>());
            }
        }
        
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            mapa.get(c).add(i);
        }
        return mapa.toString();
    }
    
}
