// Notes:
// Não altere o código apresentado *** Do not change the code shown
// Deve apenas completar o código de exercise2, onde indicado *** You should only change the code where indicated in exercise2
// Deve comentar o código para garantir que vai executando parcialmente *** You may comment the code to test and execute partially

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class PasseiosCulturais {

	// DO NOT CHANGE THIS METHOD
	public static void main(String[] args) throws FileNotFoundException {
		PrintStream fl = new PrintStream(new File("POO_2324EPr.txt"));

		// exercise 1
		// you may comment these lines when working on exercise 2
		exercise1(System.out);	// executa e escreve na consola *** executes and writes to console 
		exercise1(fl); 			// executa e escreve no ficheiro *** executes and writes to file

		// exercise 2
		// you may comment these lines when working on exercise 1
		exercise2(System.out);	// executa e escreve na consola *** executes and writes to console 
		exercise2(fl);			// executa e escreve no ficheiro *** executes and writes to file

		fl.close();
	}

	// DO NOT CHANGE THIS METHOD
	// CREATE THE CLASS DEFINITIONS ACCORDING TO THE DESCRIPTION IN THE EXAM AND THE CODE BELOW
	private static void exercise1(PrintStream out) {
		out.println("\nExercício 1) ----------------------------------\n");

		AgenciaCultural agencia = new AgenciaCultural("Olhos e Barriga", "Aveiro");

		Percurso exp1 = new Percurso("Cultura com Sabores", 120, Transporte.AUTOCARRO);
		exp1.add(new SitioCultural("Museu do Azulejo", TipoCultural.MUSEUAARTE, GamaPrecos.BAIXO));
		exp1.add(new Restaurante("Sol Nascente", TipoComida.ORIENTAL));
		exp1.add(new SitioCultural("Museu de Arte Moderna", TipoCultural.MUSEUAARTE, GamaPrecos.MEDIO));
		exp1.add(new SitioCultural("Sé", TipoCultural.RELIGIOSO, GamaPrecos.GRATUITO));
		exp1.add(new Restaurante("Green Taste", TipoComida.VEGETARIANA));
		out.println(exp1);
		
		Percurso exp2 = new Percurso("Encantos da Serra", 100, Transporte.AUTOCARRO);
		exp2.add(new SitioCultural("Convento de Tomar", TipoCultural.RELIGIOSO, GamaPrecos.BAIXO));
		exp2.add(new Restaurante("Petiscos da Serra", TipoComida.MEDITERRANICA));
		exp2.add(new SitioCultural("Museu Fóssil Mira de Aire", TipoCultural.MUSEUCIENCIA, GamaPrecos.BAIXO));
		// o próximo local não é incluído por estar repetido *** the next place is not included since it is repeated
		exp2.add(new SitioCultural("Convento de Tomar", TipoCultural.RELIGIOSO, GamaPrecos.BAIXO));
		out.println(exp2);

		List<Local> lista = new ArrayList<>();
		lista.add(new SitioCultural("Cromeleque dos Almendres", TipoCultural.HISTORICO, GamaPrecos.GRATUITO));
		lista.add(new SitioCultural("Anta da Cerqueira", TipoCultural.HISTORICO, GamaPrecos.GRATUITO));
		lista.add(new SitioCultural("Dolmen da Aliviada", TipoCultural.HISTORICO, GamaPrecos.GRATUITO));
		lista.add(new Restaurante("Bom Prato", TipoComida.MEDITERRANICA));
		Percurso exp3 = new Percurso("Anoitecer 4x4", 150, Transporte.TODOTERRENO, lista);
		out.println(exp3);

		agencia.add(exp1); agencia.add(exp2); agencia.add(exp3);
		
		out.println("\n\nAGÊNCIA:\n" + agencia);	
		out.println("TOTAL DE SITIOS CULTURAIS DISPONÍVEIS PARA VISITAR: " + agencia.totalSitiosCulturais());
		// devolve o numero de sítios culturais visitáveis, em todos os percursos *** returns the total number of places of type Sitio Cultural

		out.println();
		for (String s: agencia.percursos())  // devolve todos os percursos, de acordo com a interface Listavel
			out.println("  * " + s); 

	}

	// CHANGE THIS METHOD ONLY WHERE INDICATED
	private static void exercise2(PrintStream out) {
		out.println("\n\nExercício 2) ----------------------------------\n");
		AgenciaCultural agencia = new AgenciaCultural("Olhos e Barriga", "Aveiro");

		/*
		** Adicione aqui o código necessário para a leitura do ficheiro e registo das reservas de bilhetes.
		** Add here the code to read from file and register the ticket bookings.
		*/
		Scanner fileReader = null;
        try {
            fileReader = new Scanner(new File("./culturalia.txt"));
        } catch (FileNotFoundException e) {
            System.out.println("Erro");
            return;
        }

		while (fileReader.hasNextLine()) {
            String line = fileReader.nextLine();
            if (line.startsWith("P")){
				String[] parts = line.split(";");
            	String nomeP = parts[1].trim();
            	int precoP = Integer.parseInt(parts[2]);
				String TipoTransporte = parts[3];
				agencia.addPercurso(nomeP,precoP,TipoTransporte);
			}
            else if(line.startsWith("S")){
				String[] parts = line.split(";");
				String nomeS = parts[1].trim();
				String TipoS = parts[2];
				String TipoComida = parts[3];
				agencia.addSitioCultural(nomeS,TipoS,TipoComida);
			}
			else if(line.startsWith("R")){
				String[] parts = line.split(";");
				String nomeR = parts[1].trim();
				String TipoComida = parts[2];
				agencia.addRestaurante(nomeR,TipoComida);
			} //nao tive tempo para acabar esta alinea
        }


		out.println("\nFinished reading file.\n");

		if (agencia != null) {
			out.println("\nAGENCIA:\n" + agencia);	
			for (String s: agencia.percursos())  // devolve o conjunto de todos os percursos
				out.println("  * " + s); 
			out.println();
		}
	}

}
