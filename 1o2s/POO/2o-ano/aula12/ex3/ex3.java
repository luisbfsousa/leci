package aula12.ex3;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Comparator;
import java.util.Scanner;
import java.util.SortedSet;
import java.util.TreeSet;

public class ex3 {
    public static void main(String[] args) throws IOException{
        
        Scanner inputs = new Scanner(System.in);

        int input;
        SortedSet<movie> filmes = gerarConjunto();
        
        do {
            System.out.println("\n1 - Ver filmes por ordem alfabética de nome.");
            System.out.println("2 - Ver filmes por ordem decrescente de score.");
            System.out.println("3 - Ver filmes por ordem crescente de \"running time\".");
            System.out.println("4 - Ver géneros de filmes distintos.");
            System.out.println("5 - Sair.");

            System.out.print("\nEscolha uma operação: ");
            input = inputs.nextInt();
            System.out.print("\n");

            switch(input) {

                case 1 : {
                    for (movie filme : filmes) {
                        System.out.println(filme.toString());
                    }
                    break;
                }
                case 2 : {
                    SortedSet<movie> decrScore = new TreeSet<>(Comparator.comparing(movie::getScore).reversed());
                    decrScore.addAll(filmes);
                    for (movie filme : decrScore) {
                        System.out.println(filme.toString());
                    }
                    break;
                }
                case 3 : {
                    SortedSet<movie> creTime = new TreeSet<>(Comparator.comparing(movie::getRunningtime));
                    creTime.addAll(filmes);
                    for (movie filme : creTime) {
                        System.out.println(filme.toString());
                    }
                    break;
                }
                case 4 : {
                    SortedSet<String> genre = new TreeSet<String>();
                    for (movie filme : filmes) {
                        genre.add(filme.getGenre());
                    }
                    for (String genero : genre) {
                        System.out.println(genero);
                    }
                    break;
                }
            }
        } while (input != 5);

        escreverFicheiro(filmes);
        inputs.close();
    }

    private static SortedSet<movie> gerarConjunto() throws IOException{
        Scanner file = new Scanner(new FileReader("aula12\\ex3\\movies.txt"));
        SortedSet<movie> filme = new TreeSet<>();

        file.nextLine();

        while (file.hasNextLine()) {
            String movie = file.nextLine();
            String[] atributos = movie.split("\t");
            filme.add(new movie(atributos[0], Double.parseDouble(atributos[1]), atributos[2], atributos[3], Double.parseDouble(atributos[4])));
        }

        return filme;
    }

    public static void escreverFicheiro(SortedSet<movie> filmes) throws IOException {
        String ficheiro = "";
        for (movie filme : filmes) {
            if (filme.getScore() > 60 && filme.getGenre().equals("comedy")) {
                ficheiro += filme.toString() + "\n";
            }
        }
        PrintWriter out = new PrintWriter(new File("aula12\\ex3\\myselection.txt"));
        out.print(ficheiro);
        out.close();
    }
}
