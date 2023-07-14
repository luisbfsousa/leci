package aula02;
import java.util.Scanner;

public class ex9 {
    public static void main(String[] args){
        int n,i;
        Scanner input = new Scanner(System.in);

        n=0;
        while(n <= 0){
            System.out.print("Introduza numero: ");
            n = input.nextInt();  
            if(n <= 0){
                System.out.println("Numero invalido");
            }
        }
        
        input.close();

        for(i=n; i >= 0; i-- ){
            System.out.print(i);
            if(i%10==0){
                System.out.println("");
            } else{
                System.out.print(",");
            }
        }

    }
}
