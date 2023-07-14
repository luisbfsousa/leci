import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
// Notas:
// Não altere o código apresentado
// Deve completar o código da alinea 2
// Comentar código para garantir que vai executando parcialmente

public class P002021 {

	public static void main(String[] args) throws FileNotFoundException {
		PrintStream fl = new PrintStream(new File("POO_2021C.txt"));
		test(System.out); // executa e escreve na consola
		test(fl); // executa e escreve no ficheiro
		fl.close();
	}

	private static void test(PrintStream out) {
		alinea1(out);
		alinea2(out);
	}

	private static void alinea1(PrintStream out) {
		out.println("\nAlínea 1) ----------------------------------\n");

		AgenciaTuristica agencia = new AgenciaTuristica("Abaixo as Calorias", "Aveiro");

		Gastronomia exp1 = new Gastronomia(102, "Sabores Gostosos");
		exp1.add(new Restaurante("Carvao em Brasa", TipoComida.CHURRASQUEIRA));
		exp1.add(new Restaurante("Super Marios", TipoComida.ITALIANO));
		exp1.add(new Restaurante("Camarao Selvagem", TipoComida.MARISQUEIRA));
		exp1.add(new Restaurante("Flower Taste", TipoComida.VEGETARIANO));
		out.println(exp1.getNome() + " vai visitar " + exp1.getLista().size() + " restaurantes");
		
		List<Restaurante> lista = new ArrayList<>();
		lista.add(new Restaurante("Fome e Fogo", TipoComida.CHURRASQUEIRA));
		lista.add(new Restaurante("Bem passado", TipoComida.CHURRASQUEIRA));
		lista.add(new Restaurante("Grelha do Chefe", TipoComida.CHURRASQUEIRA));
		Gastronomia exp2 = new Gastronomia(100, "A Volta do Churrasco", lista);
		out.println(exp2.getNome() + " vai visitar " + exp2.totalRestaurantes() + " restaurantes");

		PasseioBicicleta pst1 = new PasseioBicicleta(201, "Arquitetura Antiga", new String[] {"Igreja Velha", "Aqueduto"} );
		PasseioBicicleta pst2 = new PasseioBicicleta(202, "Bares" );
		pst2.addLocal("Copos e Conversas"); pst2.addLocal("Canequinhas");
		
		agencia.add(exp1); agencia.add(exp2); agencia.add(pst1); agencia.add(pst2);
	
		out.println("RESTAURANTES DE " + exp1.getNome() + ": " + exp1.locais());
		out.println("PASSEIOS DE VISITAS A " + pst1.getNome() + ": " + pst1.locais());
		out.println("PASSEIOS DE VISITAS A " + pst2.getNome() + ": " + pst2.locais());
		
		out.println("AGENCIA: " + agencia);	
		out.println("TOTAL DE LOCAIS A VISITAR: " + agencia.totalItems());
			// devolve o numero de locais a visitar, disponiveis na agendia (em todas as atividades)

	}

	private static void alinea2(PrintStream out) {
		out.println("\nAlínea 2) ----------------------------------\n");
		AgenciaTuristica fest = null;
		
		// Adicione a seguir o código necessário para a leitura do ficheiro 

        


        // não modifique o metodo a partir daqui. Pode comentar para executar o programa

		if (fest != null) {
			out.println("AGENCIA: " + fest);
			for (Atividade s: fest.atividades())  // devolve o conjunto de todas as atividades
				out.println(s); 
			out.println("-- LISTA DE LUGARES DA AGENCIA --");	
			for (String s: fest.getAllItems())  // devolve todos os locais distintos da agencia, ordenados
				out.print(s+", "); 
			out.println();
		}
	}

}
