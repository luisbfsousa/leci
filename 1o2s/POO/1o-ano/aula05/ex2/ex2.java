package aula05.ex2;
import java.util.Scanner;


public class ex2 {
	public static void main(String[] args) {
		int input, weekDay, month;
		Calendar calendar = new Calendar(2000, 1);
		Scanner inputs = new Scanner(System.in);

		do {
			System.out.println("Calendar operations:");
			System.out.println("1 - create new calendar");
			System.out.println("2 - print calendar month");
			System.out.println("3 - print calendar");
			System.out.println("0 - exit");

            do{
                System.out.println("Escolher operacão: ");
                input = inputs.nextInt();
                if (input < 0 || input > 3){
                    System.out.println("Operacão invalida");
                }
            }while (input < 0 || input > 3);

			switch (input) {
				case 1:
                    System.out.println("Introduzir ano: ");
					int year = inputs.nextInt();
                    
                    do{
                        System.out.println("Introduzir dia em que o ano comeca: ");
                        weekDay = inputs.nextInt();
                        if (weekDay < 1 || weekDay > 7){
                            System.out.println("dia invalido");
                        }
                    }while (weekDay < 1 || weekDay > 7);
		

					calendar = new Calendar(year, weekDay);
					System.out.println("Calendar criado: " + year);
					break;

				case 2:
                    do{
                        System.out.println("Introduzir o mes: ");
                        month = inputs.nextInt();
                        if (month < 1 || month > 12){
                            System.out.println("Omes invalido");
                        }
                    }while (month < 1 || month > 12);
					
                    calendar.printMonth(month);
					break;

				case 3:
					calendar.toString();
					break;

				case 0:
					break;
			}
		} while (input != 0);
		inputs.close();
	}
}
