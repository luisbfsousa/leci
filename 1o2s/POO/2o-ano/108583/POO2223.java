import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

// Notes:
// Não altere o código apresentado *** Do not change the code shown
// Deve apenas completar o código de alinea2, onde indicado *** You should only change the code where indicated in alinea2
// Deve comentar o código para garantir que vai executando parcialmente *** You may comment the code to test and execute partially

public class POO2223 {

	public static void main(String[] args) throws FileNotFoundException {
		PrintStream fl = new PrintStream(new File("POO_2223Ep.txt"));
		test(System.out); // executa e escreve na consola *** executes and writes to console 
		test(fl); // executa e escreve no ficheiro *** executes and writes to file
		fl.close();
	}

	private static void test(PrintStream out) {
		alinea1(out);
		alinea2(out);
	}

	// DO NOT CHANGE THIS METHOD
	// CREATE THE CLASS DEFINITIONS ACCORDING TO THE DESCRIPTION IN THE EXAM AND THE CODE BELOW
	private static void alinea1(PrintStream out) {
		out.println("\nAlínea 1) ----------------------------------\n");

		/*
		** Creating CampingService; Registering clients; Adding camping spaces
		*/

		CampingService campingService = new CampingService("Best Camping", "Costa Nova");

		// Registering 4 clients
		campingService.registerClient(123456789, "João Sousa", ClientType.NORMAL);
		campingService.registerClient(234567890, "Ana Pereira", ClientType.NORMAL);
		campingService.registerClient(501234567, "Arlindo Marques", ClientType.MEMBER);
		campingService.registerClient(501987654, "Júlio Pomar", ClientType.MEMBER);

		// Adding 2 caravan spaces
		CampingSpace caravan1 = new CaravanSpace("Costa Nova", new int[]{300, 400}, 60);
		CampingSpace caravan2 = new CaravanSpace("Costa Nova", new int[]{300, 450}, 70);
		campingService.addCampingSpace(caravan1);
		campingService.addCampingSpace(caravan2);
		
		// Adding 3 car spaces
		CampingSpace[] carSpaces = new CampingSpace[]{
			new CarSpace("Costa Nova", new int[]{280, 400}, 40),
			new CarSpace("Costa Nova", new int[]{250, 350}, 30),
			new CarSpace("Costa Nova", new int[]{300, 450}, 45)
		};
		campingService.addCampingSpaces(Arrays.asList(carSpaces));

		// Adding 6 tent spaces, all of the same size
		for (int i=0; i<6; i++) {
			campingService.addCampingSpace(new TentSpace("Costa Nova", new int[]{150, 200}, 10));
		}
		// Adding 6 larger tent spaces
		for (int i=0; i<6; i++) {
			campingService.addCampingSpace(new TentSpace("Costa Nova", new int[]{200, 350}, 20));
		}


		/*
		** Book camping spaces
		*/

		// NON MEMBER client can not book a caravan space
		Client c1 = campingService.getClient(123456789);
		Boolean result = campingService.bookCampingSpace(c1, caravan1, LocalDate.of(2023, 6, 1), 180);
		if (!result) {
			out.printf("** Could not book %s space for client %s.\n", caravan1.getType(), c1);
		}		

		// MEMBER client can book a caravan space
		Client c2 = campingService.getClient(501234567);
		result = campingService.bookCampingSpace(c2, caravan1, LocalDate.of(2023, 6, 1), 180);
		if (!result) {
			out.printf("** Could not book %s space for client %s.\n", caravan1.getType(), c2);
		}		

		// Client c1 books a car space
		CampingSpace a1 = carSpaces[0];
		result = campingService.bookCampingSpace(c1, a1, LocalDate.of(2023, 6, 1), 90);
		if (!result) {
			out.printf("** Could not book %s space for client %s.\n", a1.getType(), c1);
		}		

		// Same car space cannot be booked for the same period
		Client c3 = campingService.getClient(234567890);
		result = campingService.bookCampingSpace(c3, a1, LocalDate.of(2023, 8, 1), 60);
		if (!result) {
			out.printf("** Could not book %s space for client %s.\n", a1.getType(), c3);
		}

		// Client c3 books different car space
		CampingSpace a2 = carSpaces[1];
		result = campingService.bookCampingSpace(c3, a2, LocalDate.of(2023, 8, 1), 60);
		if (!result) {
			out.printf("** Could not book %s space for client %s.\n", a2.getType(), c3);
		}


		/*
		** List bookings
		*/
		List<String> bookings = campingService.listBookings();
		if (!bookings.isEmpty()) {
			out.println("\n** All client bookings");
			bookings.forEach(out::print);
		}

	}

	// CHANGE THIS METHOD ONLY WHERE INDICATED
	private static void alinea2(PrintStream out) {
		out.println("\n\nAlínea 2) ----------------------------------\n");

		/*
		** Creating CampingService; Registering clients; Adding camping spaces
		*/

		CampingService campingService = new CampingService("Dunas", "São Jacinto");

		// Registering clients
		campingService.registerClient(123456789, "João Sousa", ClientType.NORMAL);
		campingService.registerClient(150987654, "Ana Pereira", ClientType.NORMAL);
		campingService.registerClient(157894320, "Carla Moura", ClientType.NORMAL);
		campingService.registerClient(501234567, "Arlindo Marques", ClientType.MEMBER);
		campingService.registerClient(507654321, "Júlio Pomar", ClientType.MEMBER);
		campingService.registerClient(505321987, "Cátia Santos", ClientType.MEMBER);

		// Adding caravan spaces
		campingService.addCampingSpace(new CaravanSpace("Costa Nova", new int[]{300, 400}, 60));
		campingService.addCampingSpace(new CaravanSpace("Costa Nova", new int[]{300, 450}, 70));
		
		// Adding car spaces
		campingService.addCampingSpace(new CarSpace("Costa Nova", new int[]{280, 400}, 40));
		campingService.addCampingSpace(new CarSpace("Costa Nova", new int[]{250, 350}, 30));
		campingService.addCampingSpace(new CarSpace("Costa Nova", new int[]{300, 450}, 45));

		// Adding tent spaces
		for (int i=0; i<6; i++) {
			campingService.addCampingSpace(new TentSpace("Costa Nova", new int[]{150, 200}, 10));
			campingService.addCampingSpace(new TentSpace("Costa Nova", new int[]{200, 350}, 20));
		}

		try {
			File file = new File("bookings.txt");
			Scanner input = new Scanner(file);
			
			while (input.hasNextLine()) {
				String line = input.nextLine();
				if (line.startsWith("#")) {
	
				} else{
					String[] rental = line.split(",");
					int nif = Integer.parseInt(rental[0].trim());
					String datainicio = rental[1].trim();
					String datafim= rental[2].trim();
					String tipo= rental[3].trim();
					String dimensao= rental[4].trim();
					input.campingService(nif, datainicio, datafim, tipo, dimensao);
				}
			}
			input.close();
		} catch (FileNotFoundException e) {
			System.out.println("File not found: " + e.getMessage());
		}



		/*
        ** Não modifique o metodo a partir daqui. Pode comentar para executar o programa.
		** Do not modify the method from this point on. You may comment to excute the programme.
		*/

		out.println("\n"+ campingService + ": Finished reading file.\n\n");

		// Deve devolver uma lista vazia (ou null) pois não existem espaços para carro com a dimensão indicada (ou maiores)
		// This should return empty (or null) since there are no car spaces with the required dimensions (or larger)
		out.println("Looking for car space with dimensions 300x600");
		List<CampingSpace> available = campingService.findAvailableCampingSpaces(SpaceType.CAR, LocalDate.of(2023, 6, 1), 60, new int[]{300, 600});
		if (available==null || available.isEmpty()) {
			out.println("** No options available for the type, dimensions, and dates requested.\n");
		} else {
			CampingSpace u = available.get(0);
			out.printf("%s, is available for a total price of %.2f.\n", u, campingService.calculateTotalCost(u, 60));
		}

		// Deve devolver uma lista de espaços disponíveis
		// This should return a list of available spaces
		out.println("Looking for car space with dimensions 300x400");
		available = campingService.findAvailableCampingSpaces(SpaceType.CAR, LocalDate.of(2023, 6, 1),60, new int[]{300, 400});
		if (available==null || available.isEmpty()) {
			out.println("** No options available for the type, dimensions, and dates requested.\n");
		} else {
			CampingSpace u = available.get(0);
			out.printf("%s, is available for a total price of %.2f.\n", u, campingService.calculateTotalCost(u, 60));
		}

		// listar todos os espaços disponíveis a partir de 2023/12/01 por 60 dias, por ordem decrescente de área total
		// list all spaces available from 2023/12/01 for 60 days, in decreasing order of total area
		out.println("\n\n" + campingService + ": AVAILABLE SPACES BY AREA");
		campingService.getAvailableSpacesByTotalArea(LocalDate.of(2023, 12, 1), 60).forEach(out::println);

		out.println();


	}

}
