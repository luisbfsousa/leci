

// import java.io.File;
// import java.io.FileNotFoundException;
// import java.io.PrintStream;
// import java.util.Arrays;
// import java.util.List;
// import java.util.Scanner;

// // Notas:
// // N�o altere o c�digo apresentado
// // Deve completar o c�digo da alinea 2
// // Comentar c�digo para garantir que vai executando parcialmente

// public class POO1920EN {

// 	public static void main(String[] args) throws FileNotFoundException {
// 		PrintStream fl = new PrintStream(new File("POO_1920ENPS.txt"));
// 		test(System.out); // executa e escreve na consola
// 		test(fl); // executa e escreve no ficheiro
// 		fl.close();
// 	}

// 	private static void test(PrintStream out) {
// 		alinea1(out);
// 		alinea2(out);
// 	}

// 	/**
// 	 *  al�nea 1
// 	 */
// 	private static void alinea1(PrintStream out) {
// 		out.println("\nAl�nea 1) ----------------------------------\n");

// 		Loja loja = new Loja("ePOO -  Loja Online", "epoo@ecommerce.pt");

// 		Livro livro1 = new Livro("Livro 1",15.0);
// 		livro1.add(new Autor("Autor 1", 2000));
// 		livro1.add(new Autor("Autor 2", 2000));
// 		livro1.add(new Autor("Autor 3", 2010));
// 		livro1.add(new Autor("Autor 4", 2018));
// 		livro1.setStock(100);
// 		out.println(livro1.getTitulo() + " tem " + livro1.getLista().size() + " autores");
		
// 		List<Autor> lista = Arrays.asList(new Autor("Autor X", 1945), 
// 				new Autor("Autor Y", 1966),
// 				new Autor("Autor Z", 1978));
		
// 		Livro livro2 = new Livro("Livro 2",23.0, lista);
// 		livro2.addStock(450);
// 		out.println(livro2.getTitulo() + " tem " + livro2.numeroAutores() + " autores");

// 		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());
							
// 														// tipo, marca, modelo, pot�ncia, pre�o
// 		Electrodomestico electr1 = new Electrodomestico("Frigor�fico", "Bosch","XPTO",1000,780 );
// 		Electrodomestico electr2 = new Electrodomestico("Fog�o","AEG","XYZ",423); // tipo, marca, modelo, pre�o
// 		electr1.setClasse(ClasseEnergetica.A);
		
// 		//  
// 		Telemovel tlm1 = new Telemovel("Motorola","XWZ Model A",560.0 );
// 		tlm1.addNota("Melhor Compra 2019"); tlm1.addNota("Em promo��o");
		
// 		//
// 		Electrodomestico tv1=new Electrodomestico("Televisor","LG","MODEL X",450);
// 		tv1.setClasse(ClasseEnergetica.A);
// 		tv1.addStock(5);
		
// 		//  descri��o de um produto
// 		out.println("Descri��o de electr1 :"+electr1.getDescricao());
// 		//  adicionar � Loja
// 		loja.add(livro1); loja.add(livro2); loja.add(electr1); 
// 		loja.add(electr2); loja.add(tlm1); loja.add(tv1);
 		
// 		//
// 		tlm1.addStock(2);
				
// 		out.println("AUTORES DE " + livro1.getTitulo() + ": " + livro1.autores());
		
// 		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());
 
// 		// vender alguns produtos
// 		if (!tlm1.vender(4)) 
// 			out.printf("Unidades insuficientes! S� tem %d em stock.\n",tlm1.getStock());

// 		if (livro2.vender(100))
// 			out.printf("Vendidos %d unidades de \"%s\". Passou a ter %d\n", 100,livro2.getTitulo(),livro2.getStock());
		
// 		out.println("TOTAL DE PRODUTOS DO MERCADO: " + loja.totalItems());
// 		out.println();
		
// 		//  lista todos os produtos, com pre�os, numa tabela
// 		out.println(loja); 
		
		
// 		// informa��o sobre alguns produtos
// 		out.println("Informa��o sobre Frigor�fico:");
// 		// acesso directo a um Produto dada uma string contendo tipo, nome e marca
// 		out.println(loja.getProdutoPelaDescricao("Frigor�fico:Bosch/XPTO"));
// 		out.println("Informa��o sobre Telem�vel:");
// 		// no caso de Telem�veis acesso apenas por marca(uppercase)/modelo
// 		out.println(loja.getProdutoPelaDescricao("MOTOROLA/XWZ Model A"));
		
// 	}

// 	/**
// 	 * Al�nea 2 
// 	 * @param out
// 	 */
// 	private static void alinea2(PrintStream out) {
// 		out.println("\nAl�nea 2) ----------------------------------\n");
	
// 		Loja loja = null;

// 		// TODO:   c�digo em falta 		
// 		loja = new Loja("Teste", "Teste");
		
// 		if (loja != null) {

			
// 			// TODO:  COMPLETAR ...
			
// 			try (Scanner sc = new Scanner(new File("epoo20.txt"))) {
// 				String[] line;
// 				Telemovel temp1;
// 				Electrodomestico temp2;
// 				Livro temp3;
				
// 				line = sc.nextLine().split(" ;");
// 				loja.setNome(line[0]);
// 				loja.setEnderecoWeb(line[1]);

// 				//  reordenar para obter informa�o dos produtos por ordem da sua descri��o
// 				loja.reorder();
				
// 				List<Produto> prods=loja.produtosPrecoFinalSuperiorA(500.0);
				
// 				while (sc.hasNextLine()) {
// 					line = sc.nextLine().split(";");
					
// 					switch(line[0]) {
// 					case "TELEM":
// 						temp1 = new Telemovel(line[1], line[2], Integer.parseInt(line[3].strip()));
// 						temp1.addStock(Integer.parseInt(line[4].strip()));
// 						loja.add(temp1);
// 						break;
// 					case "ELECT":
// 						temp2 = new Electrodomestico(line[1], line[2], line[3], Integer.parseInt(line[4].strip()));
// 						temp2.addStock(Integer.parseInt(line[5].strip()));
// 						temp2.setClasse(ClasseEnergetica.valueOf(line[6]));
// 						loja.add(temp2);
// 						break;
// 					case "LIVRO":
// 						temp3 = new Livro(line[1], Integer.parseInt(line[2].strip()));
// 						temp3.addStock(Integer.parseInt(line[3].strip()));
// 						for (String a: line[4].split(", "))
// 							temp3.add(new Autor(a, 2000));
// 						loja.add(temp3);
// 						break;
// 					}
// 				}
// 			} catch (FileNotFoundException e) {
// 				System.out.println("Ficheiro n�o encontrado!");
// 			}

			
// 			out.println(loja);
		 

// 			out.println("Lista de Todos os Produtos com PVP superior a 500 Euros:");
			 
// 			out.println("Lista de Electrodom�sticos com Classe A:");
// 			out.println(loja.electrodomesticosClasseX("A"));
				 
// 		}
// 	}

// }
	
	