package aula02;
import java.util.Scanner;

public class ex6 {
    public static void main(String[] args){
        int s, m , h;
        Scanner input = new Scanner(System.in);

        System.out.println("Total Segundos: ");
        s = input.nextInt();
        input.close();
        
        h = s/3600;
        //h = h%24;
        m = s/60;
        m = m%60;
        s = s%60;

        System.out.println(h + ":" + m + ":" + s );

    }
    
}

