package ExercicioD;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Comparator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class ExercicioD {
    
    public static void main(String[] args) {

        ExercicioD ap = new ExercicioD();
        ap.alinea1();
        ap.alinea2();
        ap.alinea3();   
    }

    public Loja alinea1(){
        System.out.println("\nA1");
        Loja lZe = new Loja("Loja do Zé", "Rua Domingos Carrancho, 15 , 3800-145 Aveiro");

        ProdutoLacteo lact1 = new ProdutoLacteo("Iogurte Natural Danone", 1.48, 56, "07.06.2020");
        lact1.setTeorGordura(4.0);
        lact1.setTemp(4, 6);
        lZe.add(lact1);

        lZe.add(new ProdutoLacteo("Leite UGT Meio Gordo Mimosa", 0.64, 46, "20.06.2020", 1.7));
        Cereais c1 = new Cereais("Nestlé Fitness", 1.59, 200, "20.09.2020");
        c1.setCompCereais(ComposiçãoCereais.ARROS_TRIGO);
        lZe.add(c1);

        lZe.add(new Refrigerante("Coca Cola", 1.12, 300, "15.09.2020"));

        //System.out.println(lZe);    //imprime todos os produtos da loja

        try {
            PrintWriter f1 = new PrintWriter(new File("output3.txt"));
            f1.println(lZe);
            f1.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        return lZe;
    }

    public void alinea2() {
        Loja lZe = alinea1();
        Comparator<Alimento> compararNome = new Comparator<>() {
            public int compare(Alimento o1, Alimento o2) {
                return o1.getNome().compareTo(o2.getNome());
            }
        };
        
        Set<Alimento> lacteoRefriSet = new TreeSet<>(compararNome); 

        for (Alimento alimento : lZe.getAlimentoSet()) {
            if (alimento instanceof TemperaturaInterface) {
                lacteoRefriSet.add(alimento);
            }
        }

        System.out.println("\nA2\nAlimentos que são guardados no frigorifico, ordenados por nome: ");
        for (Alimento alimento : lacteoRefriSet) {
            System.out.println(alimento);
        }
    }

    public void alinea3(){

        Map<String, Integer> validadeAlimentoMap = new TreeMap<>();

        try (Scanner input = new Scanner(new File("alimentos.txt"))) {
            input.nextLine();
            while (input.hasNextLine()) {
                String[] tab = input.nextLine().split("\t");
                if (validadeAlimentoMap.containsKey(tab[4])) {
                    validadeAlimentoMap.put(tab[4], validadeAlimentoMap.get(tab[4]) + 1);
                } else {
                    validadeAlimentoMap.put(tab[4], 1);
                }
            }
            System.out.printf("\nA3\n%-15s %-8s\n", "Data Validade", "nºAlimentos");

            for (String key : validadeAlimentoMap.keySet()) {
                System.out.printf("%-15s  %-10d%n",key, validadeAlimentoMap.get(key) );
            }
            
        } catch (FileNotFoundException e) {
            System.err.println(e.getMessage());
        }
    }
}