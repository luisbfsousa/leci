package aula02;
import java.util.Scanner;

public class ex5 {
    public static void main(String[] args){
        double v1,d1,v2,d2, f1, f2, fim; 
        Scanner input = new Scanner(System.in);

        v1=0; v2=0; d1=0; d2=0;

        while(d1 < 0){
            System.out.print("Distancia Percorrida pelo transporte A" );
            d1 = input.nextDouble();
            if(d1 <= 0){
                System.out.println("Tem que ser positivo");
            }
        }

        while(d2 < 0){
            System.out.print("Distancia Percorrida pelo transporte A" );
            d2 = input.nextDouble();
            if(d2 <= 0){
                System.out.println("Tem que ser positivo");
            }
        }

        while(v1 < 0){
            System.out.print("Distancia Percorrida pelo transporte A" );
            v1 = input.nextDouble();
            if(v1 <= 0){
                System.out.println("Tem que ser positivo");
            }
        }
        
        while(v2 < 0){
            System.out.print("Distancia Percorrida pelo transporte A" );
            v2 = input.nextDouble();
            if(v2 <= 0){
                System.out.println("Tem que ser positivo");
            }
        }

        input.close();

        f1 = d1 / v1;
        f2 = d2 / v2;

        fim = (f1+f2)/2;

        System.out.print("Velocidade media final: "+ fim);

    } 
}
