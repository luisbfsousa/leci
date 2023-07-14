package RoboCopa;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

public class RoboCopa {
	public static void main(String[] args) {
		RoboCopa exam = new RoboCopa();
		exam.parte1();
		exam.parte2();
		exam.parte2();
	}

	private void parte1() {

		Bola bola = null;
		bola = new Bola(CorDaBola.AMARELA);
		showOMStatus(bola);

		Equipa e1 = new Equipa("BeiraMar", "JJ");
		Robo r[] = { new Robo("Ron", TipoJogador.GUARDA_REDES, 5, 0), new Robo("Mes", TipoJogador.AVANCADO, 2, 40),
				new Robo("Pau", TipoJogador.DEFESA, 7, 10), new Robo("Ema", TipoJogador.MEDIO, 5, 25),
				new Robo("Tim", TipoJogador.MEDIO, 1, 20) };
		for (ObjetoMovel o : r)
			showOMStatus(o);

		e1.add(r[0]);
		e1.add(r[1]);
		e1.add(r[2]);
		e1.add(r[1]);
		e1.add(r[3]);
		e1.add(r[4]);
		e1.remove(r[3]);
		System.out.print("-- " + e1);

		Equipa e2 = new Equipa("PortoDAveiro", "Lopes");
		e2.add(new Robo("Liu", TipoJogador.GUARDA_REDES, 5, 80));
		e2.add(new Robo("Min", TipoJogador.AVANCADO, 3, 10));
		e2.add(new Robo("Hus", TipoJogador.DEFESA, 6, 70));
		e2.add(new Robo("Taw", TipoJogador.MEDIO, 5, 65));
		e2.add(new Robo("Taw", TipoJogador.MEDIO, 5, 65));
		System.out.print("-- " + e2);

		if (Bola.getnBolas() == 0)
			bola = new Bola(CorDaBola.AZUL);
		else
			System.out.println("Já temos bola!");

		Jogo tacoataco = new Jogo(e1, e2, bola, 20);
		System.out.println("--- " + tacoataco);

		// simulação simples de movimentos e golos de uma equipa
		Robo[] r2 = e2.getRobos();
		r2[1].marcaGolo();
		r2[1].move(40, 40);
		r2[1].move(60, 40);
		r2[1].move(70, 40);
		r2[1].marcaGolo();
		r2[2].move(55, 55, 20);
		r2[3].move(40, 20);
		r2[3].move(60, 20);
		r2[3].move(70, 20);
		r2[3].marcaGolo();
		for (Robo rob : r)
			showRoboStatus(rob);

		System.out.println("Score: " + e1.getGolosMarcados() + " - " + e2.getGolosMarcados());
	}

	private void showOMStatus(ObjetoMovel om) {
		System.out.printf("OM: %3d %3d %3.0f %5.1f\n", om.getX(), om.getY(), om.getVelocidade(), om.getDistancia());
	}

	private void showRoboStatus(Robo rob) {
		System.out.printf("%-10s %-15s %3d %3d %3.0f %5.1f %3d\n", rob.getId(), rob.getTipo(), rob.getX(), rob.getY(),
				rob.getVelocidade(), rob.getDistancia(), rob.getGolos());
	}

	private void parte2() {
		// Completar

		// ordenação pelo nome da equipa
		Comparator<Equipa> nomeClubeAlpha = new Comparator<>() {
			public int compare(Equipa a, Equipa b) {
				return a.getNome().compareTo(b.getNome());
			}
		};

		List<Robo> robosList = new ArrayList<>();
		Set<String> nomesEquipasSet = new HashSet<>();
		Set<Equipa> equipaSet = new TreeSet<>(nomeClubeAlpha);

		try (Scanner input = new Scanner(new File("robos.txt"))) {
			input.nextLine(); // cabeçalho
			while (input.hasNextLine()) {
				String[] tab = input.nextLine().split("\t");

				//codigo para ver o tipo de jogador ao ler o ficheiro
				TipoJogador tipoJogador = TipoJogador.GUARDA_REDES; // coloquei GR por default se não nao compilava
				if (tab[2].equals("Avançado")) {
					tipoJogador = TipoJogador.AVANCADO;
				}
				if (tab[2].equals("Médio")) {
					tipoJogador = TipoJogador.MEDIO;
				}
				if (tab[2].equals("Defesa")) {
					tipoJogador = TipoJogador.DEFESA;
				}
				if (tab[2].equals("Guarda-redes")) {
					tipoJogador = TipoJogador.GUARDA_REDES;
				}
				
				//se a lista com o nome da equipa contem o nome da equipa
				if (nomesEquipasSet.contains(tab[1])) {
					for (Equipa e : equipaSet) {	//percorre a lista da equipa
						if (e.getNome().equals(tab[1])) {	//se a lista da equipa tive o nome do clube
							e.add(new Robo(tab[0], tipoJogador));	//adicionamos um novo robo à equipaSet
							robosList.add(new Robo(tab[0], tipoJogador));	//adicionamos um novo robo aos robosList

						}
					}
				} else {
					Equipa e = new Equipa(tab[1], "unknown");//como ainda n existe esta equipa, criamosmo-la com o nome e o responsável "unknown"
					e.add(new Robo(tab[0], tipoJogador));//adiciona um novo roubo ao conj de robos da classe Equipa
					robosList.add(new Robo(tab[0], tipoJogador));	//adiciona o robo à roboList
					equipaSet.add(e);//adiciona um robo á equipaList
					nomesEquipasSet.add(tab[1]); //adiciona o nome da equipa ao set dos nomes
				}
				
			}


		} catch (FileNotFoundException e) {
			System.err.println(e.getMessage());
		}


		try (PrintWriter out = new PrintWriter(new File("parte2.txt"))) {
			out.println("Lista de Equipas (" + equipaSet.size() + " equipas)");
			for (Equipa e : equipaSet) {
				out.println(e);
			}
			out.println("Lista de Robos (" + robosList.size() + " robos)");
			out.println(robosList);

		} catch (FileNotFoundException e) {
			System.err.println(e.getMessage());
		}

	}

}
