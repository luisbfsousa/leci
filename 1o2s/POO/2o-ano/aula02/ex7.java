package aula02;
import java.util.Scanner;

public class ex7 {
    public static void main(String[] args){
        double x1,x2,y1,y2, d;
        Scanner input = new Scanner(System.in);

        System.out.print("X1? ");
        x1 = input.nextDouble();
        System.out.print("X2? ");
        x2 = input.nextDouble();
        System.out.print("Y1? ");
        y1 = input.nextDouble();
        System.out.print("Y2? ");
        y2 = input.nextDouble();

        input.close();

        d = Math.sqrt(Math.pow((x2-x1),2)+ Math.pow((y2-y1),2));

        System.out.println("A distância dos dois pontos é " + d);
    }
}
