package aula03;
import java.util.Scanner;

public class ex6 {
    public static void main(String[] args){
        int dia, mes, ano;
        Scanner input = new Scanner(System.in);

        System.out.println("Introduzir ano");
        ano = input.nextInt();
        
        do{
            System.out.println("Introduzir mes");
            mes = input.nextInt();
            if(mes >12 || mes < 0){
                System.out.println("Mês invalido");
            }
        }
        while(mes >12 || mes < 0);
        
        input.close();

        if (mes == 2){
            dia = 28;
            if ((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0){
                dia = 29;
            }
            else if (mes == 4 || mes == 6 || mes == 9 || mes == 11){
                dia = 30;
            }
            else{
                dia = 31;
            }
        System.out.println("O mês " + mes + " tem " + dia + " dias");
        }
    }
    
}
