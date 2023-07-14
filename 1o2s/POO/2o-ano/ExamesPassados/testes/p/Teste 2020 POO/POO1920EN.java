
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Scanner;
import java.util.TreeSet;

// Notas:
// N�o altere o c�digo apresentado
// Deve completar o c�digo da alinea 2
// Comentar c�digo para garantir que vai executando parcialmente

public class POO1920EN {

	public static void main(String[] args) throws FileNotFoundException {
		PrintStream fl = new PrintStream(new File("POO_1920ENPS.txt"));
		test(System.out); // executa e escreve na consola
		//test(fl); // executa e escreve no ficheiro
		fl.close();
	}

	private static void test(PrintStream out) {
		// alinea1(out);
		alinea2(out);
	}

	/**
	 * al�nea 1
	 */
	private static void alinea1(PrintStream out) {
		out.println("\nAlínea 1) ----------------------------------\n");

		Loja loja = new Loja("ePOO -  Loja Online", "epoo@ecommerce.pt");

		Livro livro1 = new Livro("Livro 1", 15.0);
		livro1.add(new Autor("Autor 1", 2000));
		livro1.add(new Autor("Autor 2", 2000));
		livro1.add(new Autor("Autor 3", 2010));
		livro1.add(new Autor("Autor 4", 2018));
		livro1.setStock(100);
		out.println(livro1.getTitulo() + " tem " + livro1.getLista().size() + " autores");

		List<Autor> lista = Arrays.asList(new Autor("Autor X", 1945),
				new Autor("Autor Y", 1966),
				new Autor("Autor Z", 1978));

		Livro livro2 = new Livro("Livro 2", 23.0, lista);
		livro2.addStock(450);
		out.println(livro2.getTitulo() + " tem " + livro2.numeroAutores() + " autores");

		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());

		// tipo, marca, modelo, pot�ncia, pre�o
		Electrodomestico electr1 = new Electrodomestico("Frigorífico", "Bosch", "XPTO", 1000, 780);
		Electrodomestico electr2 = new Electrodomestico("Fogão", "AEG", "XYZ", 423); // tipo, marca, modelo, pre�o
		electr1.setClasse(ClasseEnergetica.A);

		//
		Telemovel tlm1 = new Telemovel("Motorola", "XWZ Model A", 560.0);
		tlm1.addNota("Melhor Compra 2019");
		tlm1.addNota("Em promoção");

		//
		Electrodomestico tv1 = new Electrodomestico("Televisor", "LG", "MODEL X", 450);
		tv1.setClasse(ClasseEnergetica.A);
		tv1.addStock(5);

		// descri��o de um produto
		out.println("Descrição de electr1 :" + electr1.getDescricao());
		// adicionar � Loja
		loja.add(livro1);
		loja.add(livro2);
		loja.add(electr1);
		loja.add(electr2);
		loja.add(tlm1);
		loja.add(tv1);

		tlm1.addStock(2);

		out.println("AUTORES DE " + livro1.getTitulo() + ": " + livro1.autores());

		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());

		// vender alguns produtos
		if (!tlm1.vender(4))
			out.printf("Unidades insuficientes! Só tem %d em stock.\n", tlm1.getStock());

		if (livro2.vender(100))
			out.printf("Vendidos %d unidades de \"%s\". Passou a ter %d\n",
					100, livro2.getTitulo(), livro2.getStock());

		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());
		out.println();

		// lista todos os produtos, com pre�os, numa tabela
		out.println(loja);

		// // informa��o sobre alguns produtos
		out.println("Informação sobre Frigorífico:");
		// // acesso directo a um Produto dada uma string contendo tipo, nome e marca
		out.println(loja.getProdutoPelaDescricao("Frigorífico:Bosch/XPTO"));
		out.println("Informação sobre Telemóvel:");
		// // no caso de Telem�veis acesso apenas por marca(uppercase)/modelo
		out.println(loja.getProdutoPelaDescricao("MOTOROLA/XWZ Model A"));
	}

	/**
	 * Al�nea 2
	 * 
	 * @param out
	 */
	private static void alinea2(PrintStream out) {
		out.println("\nAl�nea 2) ----------------------------------\n");

		Loja loja = null;

		// TODO: c�digo em falta
		loja = new Loja("Teste", "Teste");

		if (loja != null) {

			// TODO: COMPLETAR ...
			try (Scanner sc = new Scanner(new File("epoo20.txt"))) {
				String header[] = sc.nextLine().split(";");
				loja = new Loja(header[0], header[1]);
				while (sc.hasNextLine()) {
					String[] info = sc.nextLine().split(";");
					switch (info[0]) {
						case "TELEM":
							Produto t = new Telemovel(info[1], info[2], Double.parseDouble(info[3]));
							t.setStock(Integer.parseInt(info[4]));
							loja.add(t);
							break;
						case "ELECT":// ELECT;Televisor;SONY;KX;400;8;A
							Produto e = new Electrodomestico(info[1], info[2], info[3],
									Double.parseDouble(info[4]));
							e.setStock(Integer.parseInt(info[5]));
							((Electrodomestico) e).setClasse(ClasseEnergetica.valueOf(info[6]));
							loja.add(e);
							break;
						case "LIVRO":
							Produto l = new Livro(info[1], Double.parseDouble(info[2]));
							l.setStock(Integer.parseInt(info[3]));
							String[] autores = info[4].split(",");
							Collection<Autor> lista = new TreeSet<>();
							for (int i = 0; i < autores.length; i++) {
								lista.add(new Autor(autores[i], 2));
							}
							((Livro) l).setlista(lista);
							loja.add(l);
							break;

						default:
							break;
					}

				}
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
			// // reordenar para obter informa�o dos produtos por ordem da sua descri��o
			loja.reorder();

			List<Produto> prods = loja.produtosPrecoFinalSuperiorA(500.0);

			out.println(loja);

			out.println("Lista de Todos os Produtos com PVP superior a 500 Euros:");
			prods.forEach(System.out::println);
			out.println("");
			out.println("Lista de Electrodomésticos com Classe A:");
			loja.electrodomesticosClasseX("A").forEach(System.out::println);
		}
	}
}
