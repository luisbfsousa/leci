import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.time.LocalDate;
import java.util.Scanner;

// Notas:
// Não altere o código apresentado
// Deve completar o código da alínea 2
// Deve comentar o código para garantir que vai executando parcialmente

public class POO2122 {

	public static void main(String[] args) throws FileNotFoundException {
		PrintStream fl = new PrintStream(new File("POO_2122EP.txt"));
		test(System.out);	// executa e escreve na consola
		test(fl);	// executa e escreve no ficheiro
		fl.close();
	}

	private static void test(PrintStream out) {
		alinea1(out);
		alinea2(out);
	}

	private static void alinea1(PrintStream out) {
		out.println("\nAlínea 1) ----------------------------------\n");

		AgenciaTuristica at1 = new AgenciaTuristica("SóFérias", "Aveiro");

		PacoteTuristico p1 = at1.pacoteTuristico("Tranquilidade", 5, 300);
		p1.adicionaServico(new Voo("TAP932", LocalDate.parse("2022-07-30"), Classe.TURISTICA));
		p1.adicionaServico(new Alojamento("B&B", 3, 5, Regime.PEQUENOALMOCO));
		System.out.println("Adicionado: " + p1);

		PacoteTuristico p2 = at1.pacoteTuristico("Relaxar", 7, 800);
		p2.adicionaServico(new Voo("QTR80V", LocalDate.parse("2022-08-02"), Classe.PRIMEIRA));
		p2.adicionaServico(new Alojamento("CoolResort", 2, 4, Regime.TUDOINCLUIDO));
		p2.adicionaServico(new Transporte(5, 1000, Combustivel.HIBRIDO));
		System.out.println("Adicionado: " + p2);

		PacoteTuristico p3 = at1.pacoteTuristico("Férias ativas", 8, 400);
		p3.adicionaServico(new Voo("TAP1477", LocalDate.parse("2022-08-10"), Classe.TURISTICA));
		p3.adicionaServico(new Voo("TAP1477", LocalDate.parse("2022-08-11"), Classe.TURISTICA));
		p3.adicionaServico(new Alojamento("GreatPlace", 1, 3, Regime.MEIAPENSAO));
		p3.adicionaServico(new Transporte(2, 2000, Combustivel.ELETRICO));
		System.out.println("Adicionado: " + p3);

		// Reservas (pacote selecionado e número de pessoas)
		System.out.println();
		at1.reserva(p1, 3);
		at1.reserva(p2, 4);
		at1.reserva(p3, 2);
		at1.reserva(new PacoteTuristico("Não existe", 0, 0), 1);

		System.out.println(); System.out.println();
		// Lista todos os pacotes turísticos disponíveis
		out.println(at1.listaPacotes());
		System.out.println();
		// Lista todas as reservas efetuadas e valor total de cada uma
		out.println(at1.listaReservas());

	}

	private static void alinea2(PrintStream out) {
		out.println("\nAlínea 2) ----------------------------------\n");
		AgenciaTuristica at2 = null; // modificar

		// Adicione a seguir o código necessário para a leitura do ficheiro 

		Scanner input = null;

		try {
			input = new Scanner(new FileInputStream("POO2122\\agencia.txt"));
		} catch (FileNotFoundException e) {
			System.out.println("agencia.txt não encontrado.");
			System.exit(1);
		}

		while(input.hasNextLine()){

			String linha = input.nextLine()	;
			char letra1 = linha.charAt(0);
			linha = linha.substring(2);
			String[] lineSplit = linha.split(",");
			
			

			if (letra1 = "P"){
                String nomePacote = lineSplit[0];
                int pessoas = Integer.parseInt(lineSplit[1]);
                int preco = Integer.parseInt(lineSplit[2]);
            }else if (letra1 = "R"){
                String nomePacote = lineSplit[0];
                int pessoas = Integer.parseInt(lineSplit[1]);
            }
		}

		// Não modifique o metodo a partir daqui
		// Pode comentar para executar o programa
		if (at2 != null) {
			out.println("AGÊNCIA: " + at2);
			out.println();
			out.println("-- LISTA DE PACOTES ORDENADOS E FILTRADOS POR PREÇO --");	
			for (PacoteTuristico p: at2.pacotesPorPreco(400))	// devolve todos os pacotes turísticos da agencia com preço pessoa/noite inferior ao indicado, 
				out.println(p);										// ordenados do preço mais baixo ao mais alto


			out.println();
			out.println("-- LISTA DE RESERVAS ORDENADAS POR PREÇO TOTAL --");	
			for (Reserva r: at2.reservasPorPreco())  				// devolve todas as reservas, ordenadas por preço total, de forma decrescente
				out.println(r); 

		}
	}

}
