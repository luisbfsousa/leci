package aula01;

public class StringExample {
	public static void main(String[] args) {
		String s1 = "programar em Java";
		System.out.println(s1.split(" ")[0] + " é engraçado!! :)");
		System.out.println("É giro " + s1);
		for (int i=0; i<14; i++)
			System.out.println("vamos " + s1 + " na aula " + i);
	}
}