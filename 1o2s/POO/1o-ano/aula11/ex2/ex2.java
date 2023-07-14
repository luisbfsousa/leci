package aula11.ex2;

import java.util.Scanner;
import java.io.PrintWriter;
import java.io.FileReader;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.Comparator;

public class ex2 {
    public static void main(String[] args) throws IOException {
        ArrayList<voo> voo = new ArrayList<>(); carregarvoos(voo);

        gerarFicheiro(gerarListavoos(voo), "C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\info.txt");
        gerarFicheiro(gerarListaChegadas(voo), "C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\cidades.txt");
        //gerarFicheiro(gerarListaAtrasos(voo), "C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\atrasados.txt");

        System.out.println(gerarListavoos(voo));
        System.out.println(gerarListaAtrasos(voo));
        System.out.println(gerarListaChegadas(voo));
    }

    public static void gerarFicheiro(String dados, String caminho) throws IOException {
        PrintWriter out = new PrintWriter(new File(caminho));
        out.print(dados);
        out.close();
    }

    public static int calcularMediaArrayList(ArrayList<Integer> lista) {
        int soma = 0;
        for (int i : lista) { soma += i; }
        return soma / lista.size();
    }

    public static void carregarvoos(ArrayList<voo> voos) throws IOException {
        Scanner txtvoos = new Scanner(new FileReader("C:\\Users\\luisb\\OneDrive\\Ambiente de Trabalho\\universidade\\poo\\praticas\\src\\aula11\\voos.txt"));
            txtvoos.nextLine();
            while (txtvoos.hasNext()) {
                String[] voo = txtvoos.nextLine().split("\t");
                if (voo.length == 3) {
                    voos.add(new voo());
                } else {
                    voos.add(new voo());
                }
            }
    }

    public static String gerarListavoos(ArrayList<voo> voos) {
        String head = String.format("%-20s %-20s %-20s %-20s %-20s %-20s\n", "Hora", "Voo", "Companhia", "Origem", "Atraso", "Obs");
        String body = "";
        for (voo voo : voos) {
            body += voo.toString() + "\n";
        }
        return head + body;
    }

    public static String gerarListaAtrasos(ArrayList<voo> voos) {
        HashMap<String, ArrayList<Integer>> atrasos = new HashMap<>();
        for (voo voo : voos) {
            if (!voo.getdelay().equals("")) {
                atrasos.putIfAbsent(voo.getcompany(), new ArrayList<>());
                atrasos.get(voo.getcompany()).add(voo.getdelaySeconds());
            }
        }
        Map<String, String> atrasosmedios = new HashMap<String, String>();
        for (String company : atrasos.keySet()) {
            int media_sec = calcularMediaArrayList(atrasos.get(company));
            String atraso = String.format("%02d:%02d", media_sec/3600, (media_sec-((media_sec/3600)*3600))/60);
            atrasosmedios.put(company, atraso);
        }
        LinkedHashMap<String, String> atrasosmedios_ordenados = new LinkedHashMap<>();
        atrasosmedios.entrySet().stream().sorted(Map.Entry.comparingByValue()).forEachOrdered(x -> atrasosmedios_ordenados.put(x.getKey(), x.getValue()));

        String head = String.format("%-20s %-20s\n", "Companhia", "Atraso Médio");
        String body = "";
        for (String company : atrasosmedios_ordenados.keySet()) {
            body += String.format("%-20s %-20s\n", company, atrasosmedios_ordenados.get(company));
        }
        return head + body;
    }

    public static String gerarListaChegadas(ArrayList<voo> voos) {
        HashMap<String, Integer> chegadas = new HashMap<>();
        for (voo voo : voos) {
            chegadas.putIfAbsent(voo.getbegin(), 0);
            chegadas.put(voo.getbegin(), chegadas.get(voo.getbegin()) + 1);
        }
        Map<String, Integer> chegadas_ordenadas = new LinkedHashMap<String, Integer>();
        chegadas.entrySet().stream().sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())) .forEachOrdered(x -> chegadas_ordenadas.put(x.getKey(), x.getValue()));

        String head = String.format("%-20s %-20s\n", "Origem", "Voos");
        String body = "";
        for (String cidade : chegadas_ordenadas.keySet()) {
            body += String.format("%-20s %-20s\n", cidade, chegadas_ordenadas.get(cidade));
        }
        return head + body;
    }
}