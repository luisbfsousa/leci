package aula03;
import java.util.Random;


public class ex8 {
    public static void main(String[] args){
        final int e = 16;
		double[][] notas = new double[e][3];

		System.out.printf("%6s %6s %6s\n", "NotaT", "NotaP", "Pauta");

		for (int i = 0; i < e; i++) {
			double NotaT, NotaP, Pauta;

			NotaT = Math.round(new Random().nextDouble() * 20 * 10) / 10.0;
			NotaP = Math.round(new Random().nextDouble() * 20 * 10) / 10.0;

			if (NotaT < 7 || NotaT < 7)
				Pauta = 66;
			else
				Pauta = Math.round(0.4 * NotaT + 0.6 * NotaP);

			notas[i][0] = NotaT;
			notas[i][1] = NotaP;
			notas[i][2] = (int) Pauta;

			System.out.printf("%6.1f %6.1f %6.0f\n", NotaT, NotaP, Pauta);
        }
    }
    
}
