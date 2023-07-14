package ExercicioC;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

public class ExercicioC {
    
    public static void main(String[] args) {
        ExercicioC ap = new ExercicioC();
        ap.alinea1();
        ap.alinea2();
        ap.alinea3();
    }

    public Escola alinea1() {
        Escola ih = new Escola("Internacional House Aveiro", "Rua Domingos Carrancho, 1, 3800-145 Aveiro");
        ExameEscrito e1 = new ExameEscrito("Inglês para Empresas", "Anthony Laurel", "12.06.2020 15h", "15; 22", 4);
        e1.setConsulta(Consulta.TRUE);
        e1.setPrazo(6);
        ih.add(e1);
        ih.add(new ExameEscrito("Alemão", "Manfred Glesner", "12.06.2020 10h", "13"));
        TestePC t1 = new TestePC("Italiano Intermédio", "Luca Benini", "01.06.2015 10h", "25");
        t1.setLink("http://www.ihaveiro.com/outras-linguas/tii");
        ih.add(t1);
        ih.add(new ProvaOral("Inglês Avançado", "Anthony Laurel", "05.06.2020 10h", "3", Lingua.UK));
        //System.out.println(ih); //imprime todas as provas da escola

        try {
            PrintWriter f1 = new PrintWriter(new File("output2.txt"));
            f1.println(ih);
            f1.close();
        } catch (FileNotFoundException e) {
            System.err.println(e.getMessage());
        }
        return ih;
    }
    

    public void alinea2() {
        Escola es = alinea1();
        Comparator<Teste> comparePrazos = new Comparator<>() {
            public int compare(Teste a, Teste b) {
                return a.getNomeCadeira().compareTo(b.getNomeCadeira());
            }
        };

        Set<Teste> prazoOrdenadoSet = new TreeSet<>(comparePrazos);
        for (Teste teste : es.getTestesList()) {
            if (teste instanceof InterfacePrazo) {
                prazoOrdenadoSet.add(teste);
            }
        }

        System.out.println("\nA2\nProvas com prazo limite, ordenadas por Cadeira");
        for (Teste teste : prazoOrdenadoSet) {
            System.out.println(teste);
        }
    }

    public void alinea3() {
        System.out.printf("%nA3%n");
        Map<String, Integer> profProvasMap = new HashMap<>();
        try (Scanner input = new Scanner(new File("samples_s2.txt"))) {
            input.nextLine();
            while (input.hasNextLine()) {
                String[] tab = input.nextLine().split("\t");
                if (profProvasMap.containsKey(tab[2])) {
                    profProvasMap.put(tab[2], profProvasMap.get(tab[2]) + 1);
                } else {
                    profProvasMap.put(tab[2],  1);
                }
            }

            for (String key : profProvasMap.keySet()) {
                System.out.printf("%-20s %-5d%n", key, profProvasMap.get(key));
            }
            
        } catch (FileNotFoundException e) {
            System.err.println(e.getMessage());
        }

    }
}