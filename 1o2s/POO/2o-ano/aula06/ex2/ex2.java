package aula06.ex2;

import java.util.Scanner;

public class ex2 {
    public static void main(String[] args){
        int opcao;
        Scanner input = new Scanner(System.in);

        do{
            System.out.println("");
            System.out.println("1. Inserir Contacto ");
            System.out.println("2. Alterar Contacto ");
            System.out.println("3. Apagar Contacto");
            System.out.println("4. Procurar Contacto");
            System.out.println("5. Listar Contactos");
            System.out.println("0. Sair");
            System.out.println("");

            do{
                System.out.print("Escolher operacão: ");
                opcao = input.nextInt();
                if(opcao < 0 || opcao > 5){
                    System.out.println("Operacao invalida");
                }
            }while(opcao < 0 || opcao > 5);

            switch(opcao){
                case 1:
                    break;

                case 2:
                    break;

                case 3:
                    break;

                case 4:
                    break;

                case 5:
                    break;
                
                case 0:
                    break;
            } 
        }while(opcao!=0);
        input.close();
    }
}
