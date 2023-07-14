package aula04;
import java.util.Scanner;
import java.lang.String;

public class ex4 {
    public static void main(String [] args){
        int [] values = readValues();
        drawCalendar(values[0], values[1], values[2] );
    }

    public static int[] readValues(){
        Scanner input = new Scanner(System.in);
         
        System.out.println("Introduzir ano");
        int ano = input.nextInt();  
        System.out.println("Introduzir mes");
        int mes = input.nextInt();
        System.out.println("Introduzir dia");
        int dia = input.nextInt();

        input.close();

        return new int [] {ano, mes, dia};
    }

    public static int numberOfDaysInmes(int mes, int ano) {
        if (mes == 2) {
            if (isLeapano(ano)) return 29;
            return 28;
        }
        if (mes == 4 || mes == 6 || mes == 9 || mes == 11) return 30;
        return 31;
    }

    public static boolean isLeapano(int ano) {
        return (ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0;
    }

    public static void drawCalendar(int mes, int ano, int dia) {
        int days = numberOfDaysInmes(mes, ano);
        String mesName = getmes(mes);

        int mesNameLength = mesName.length();
        int anoLength = String.valueOf(ano).length();
        int padding = (20 - mesNameLength - anoLength) / 2;
        String paddingString = "";
        for (int i = 0; i < padding; i++) paddingString += " ";
        
        System.out.println(paddingString + mesName + " " + ano + paddingString);
        System.out.println("Su Mo Tu We Th Fr Sa");

        for (int i = 0; i < dia; i++) System.out.print("   ");

        for (int i = 1; i <= days; i++) {
            System.out.printf("%2d ", i);
            if ((i + dia) % 7 == 0 || i == days) System.out.println();
        }
    }

    public static String getmes(int mes){
        switch(mes){
            case 1: return "Janeiro";
            case 2: return "Fevereiro";
            case 3: return "Março";
            case 4: return "Abril";
            case 5: return "Maio";
            case 6: return "Junho";
            case 7: return "Julho";
            case 8: return "Agosto";
            case 9: return "Setembro";
            case 10: return "Outubro";
            case 11: return "Novembro";
            case 12: return "Dezembro";
            default: return "";
        }
    }
}
