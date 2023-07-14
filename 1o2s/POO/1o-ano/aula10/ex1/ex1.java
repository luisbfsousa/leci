package aula10.ex1;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ex1 {
    public static void main(String[] args) {
        int input;
        Scanner inputs = new Scanner(System.in);
        Map <String, String> ordenar = new HashMap();

        do{
            System.out.println("Opções:");
            System.out.println("1 - Adicionar Frase");
            System.out.println("2 - Alterar Frase");
            System.out.println("3 - Remover Frase");
            System.out.println("0 - Sair");

            System.out.print("Introduzir opção: ");
            input = inputs.nextInt();

            switch(input){
                case 1:
                    System.out.print("Introduzir termo: ");
                    String termo = inputs.next();
                    String lixo = inputs.nextLine();
                    System.out.print("Introduzir significado: ");
                    String significado = inputs.next();

                    ordenar.put(termo, significado);
                    System.out.println(ordenar);

                    break;

                case 2:
                    System.out.print("Introduzir termo: ");
                    String termo1 = inputs.next();
                    String lixo1 = inputs.nextLine();
                    System.out.print("Introduzir significado: ");
                    String significado1 = inputs.nextLine();

                    ordenar.replace(termo1, significado1);
                    System.out.println(ordenar);

                    break;

                case 3:
                    System.out.print("remover: ");
                    String remover = inputs.next();

                    ordenar.remove(remover);
                    System.out.println(ordenar);

                    break;
    
                case 0:
                    break;
            }
        }while (input != 0);

        inputs.close();

    }
}
