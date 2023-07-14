package aula04;
import java.lang.String;

public class ex1 {
    public static void main(String [] args){
        String s1 = "Porto Campeao";

        System.out.println(s1.toUpperCase());
        System.out.println(s1.charAt(s1.length()-1));
        System.out.println(s1.substring(0, 5));

        char a[] = {'m','e','l','h','o','r',' ','d','e',' ','p','o','r','t','u','g','a','l'};
        String s2 = new String(a);
        System.out.println(s2);

        StringBuilder t = new StringBuilder();
        t.append(28);
        t.append(" Setembro ");
        t.append(1893);
        String s3 = t.toString();
        System.out.println("fundado a " + s3);

        System.out.println(s1.compareTo(s2));
    }
}
