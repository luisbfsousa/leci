package aula07.ex2;
import java.util.Scanner;

public class ex2 {
	public static void main(String[] args) {
		int input, day, month, year;
		DateYMD date = null;
		Scanner inputs = new Scanner(System.in);

		do {
			System.out.println("Date operations:");
			System.out.println("1 - create new date");
			System.out.println("2 - show current date");
			System.out.println("3 - increment date");
			System.out.println("4 - decrement date");
			System.out.println("0 - exit");

            do{
                System.out.println("Escolher operação");
                input = inputs.nextInt();
                if (input < 0 || input > 4){
                    System.out.println("Operação invalida");
                }
            }while (input < 0 || input > 4);

			switch (input) {
				case 1:
                    do{
                        System.out.println("Introduza o dia: ");
                        day = inputs.nextInt();
                        if (day < 1 || day > 31){
                            System.out.println("Dia invalido");
                        }
                    }  while(day < 1 || day > 31);
                    
                    do{
                        System.out.println("Introduza o mes: ");
                        month = inputs.nextInt();
                        if (month < 1 || month > 12){
                            System.out.println("mes invalido");
                        }
                    }  while(month < 1 || month > 12);
					
                    System.out.println("Introduza o ano: ");
                    year = inputs.nextInt();

					date = new DateYMD(day, month, year);
					System.out.println("Data criada: " + date);
					break;

				case 2:
					if (date == null) {
						System.out.println("Data não criada.");
						break;
					}
					
					System.out.println("Data atual: " + date.toString());
					break;

				case 3:
					if (date == null) {
						System.out.println("Data não criada.");
						break;
					}

                    System.out.println("Introduza o numero de dias: ");
                    int daysIn = inputs.nextInt();
					date.increment(daysIn);
					System.out.println("Data incrementada: " + date);
					break;

				case 4:
					if (date == null) {
						System.out.println("Data não criada.");
						break;
					}

                    System.out.println("Introduza o numero de dias: ");
                    int daysDe = inputs.nextInt();
                    
                    date.decrement(daysDe);
					System.out.println("Data decrementada: " + date);
					break;

				case 0:
					break;
			}

			System.out.println();
		} while (input != 0);

        inputs.close();
	}
}
