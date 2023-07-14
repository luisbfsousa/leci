package ExercicioB;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ExercicioB {
    
    public static void main(String[] args) {
        
        ExercicioB ap = new ExercicioB();
        ap.alinea1();
        ap.alinea2();
        ap.alinea3();
    }

    public Biblioteca alinea1(){
        Biblioteca bAveiro = new Biblioteca("Biblioteca Municipal de Aveiro", "Largo Dr. Jaime Magalhães Lime, 3800 - 156 Aveiro, Portugal");

        bAveiro.add(new Livro("História da Europa", "Lisboa: Dom Quixote","Jean-Baptiste Duroselle", " 972-20-0824-2"));
        bAveiro.add(new Livro("Papillon", "Amadora: Bertrand", "Henri Charrière"));
        bAveiro.add(new Livro("Branca de neve e os sete anões", "Abril Morumbi", "Jacob Grimm; Wilhelm Grimm"));
        bAveiro.add(new Revista("Revista municipal", "Aveiro: C.M.A.", "0874-727X"));
        bAveiro.add(new Jornal("Diário de notícias", Cor.CORES));
        Jornal gaf = new Jornal("O gafanhoto");
        gaf.setPeriodicidade(Periodicidade.BIMESTRAL);
        bAveiro.add(gaf);

        //System.out.println(bAveiro);    imprime todas as publicações da biblioteca

        try {
            PrintWriter f1 = new PrintWriter(new File("output.txt"));
            f1.println(bAveiro);
            f1.close();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return bAveiro;
    }

    public void alinea2() {
        Biblioteca bAveiro = alinea1();
        System.out.println(bAveiro);
    }

    public void alinea3(){
        Map<String, Integer> pubEditoraMapa = new HashMap<>();
        try (Scanner input = new Scanner(new File("samples.txt"))) {
            input.nextLine();
            while (input.hasNextLine()) {
                String[] tab = input.nextLine().split("\t");
                if (pubEditoraMapa.containsKey(tab[2])) {
                    pubEditoraMapa.put(tab[2], pubEditoraMapa.get(tab[2]) + 1);
                } else {
                    pubEditoraMapa.put(tab[2], 1);
                }
            }
            for (String key : pubEditoraMapa.keySet()) {
                System.out.printf("%-30s %-10d%n", key, pubEditoraMapa.get(key));
            }
            
        } catch (FileNotFoundException e) {
            System.err.println(e.getMessage());
        }
    }

}