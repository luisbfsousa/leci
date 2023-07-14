package aula06.ex1;

public class Test {
    public static void main(String[] args) {
        Aluno al = new Aluno ("Andreia Melo", 9855678,
         new Date(18, 7, 1990), new Date(1, 9, 2018));
        Professor pl = new Professor("Andreia Melo", 9855678,
         new Date(18, 7, 1990), "Informatica", 2000);
        Bolseiro bls = new Bolseiro ("Igor Santos", 8976543, new Date(11, 5, 1985), pl,
        900);
        bls.setBolsa(1050);
        
        System.out.println("Aluno: " + al.getName());
        System.out.println(al);
        
        System.out.println("Bolseiro: " + bls.getName() + ", NMec: "
        + bls.getNMec() + ", Bolsa: " + bls.getBolsa() + ", Orientador: " +
        bls.getOrientador());
        System.out.println(bls);
   } 
}
