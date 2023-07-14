package aula05.ex1;

import java.util.Scanner;
import java.lang.String;

public class ex1 {
    public static void main(String[] args){
        int input, dia, mes, ano;
        Date Data = new Date(4,4,2022);
        Scanner inputs = new Scanner(System.in);

        do {
			System.out.println("Date operations:");
			System.out.println("1 - create new date");
			System.out.println("2 - show current date");
			System.out.println("3 - increment date");
			System.out.println("4 - decrement date");
			System.out.println("0 - exit");

            System.out.println("Introduzir opção. ");
            input = inputs.nextInt();

            

            switch(input){
                case 1:
                do{
                    System.out.println("introduzir dia");
                    dia = inputs.nextInt(); 
                    if (dia < 0 || dia > 31){
                        System.out.println("Dia inválido");
                    }
                }while (dia < 0 || dia > 31);

                do{
                    System.out.println("introduzir mes");
                    mes = inputs.nextInt(); 
                    if (mes < 0 || mes > 12){
                        System.out.println("mes inválido");
                    }
                }while (mes < 0 || mes > 31);

                do{
                    System.out.println("introduzir ano");
                    ano = inputs.nextInt(); 
                    if (ano < 0 || ano > 31){
                        System.out.println("ano inválido");
                    }
                }while (ano < 0);

                Data = new Date(dia, mes, ano);


                case 2:
                    System.out.println("Data atual: " + Data.toString());
                    break;

                case 3:
                    Data.increment();
                    System.out.println("Data incrementada: " + Data);
                    break;

                case 4:
                    Data.decrement();
                    System.out.println("Data decrementada: " + Data);
                    break;

                case 0:
                    break;
            }
        
        }while (input != 0);
    
        inputs.close();
    }
    
}
