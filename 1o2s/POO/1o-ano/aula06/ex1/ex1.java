package aula06.ex1;
import aula05.ex1.Date;

public class ex1{
    public static void main(String[] args) {
        Aluno al = new Aluno("Andreia Melo",9855678, new Date(18, 7, 1990), new Date(1, 9, 2018));

        Bolseiro bls = new Bolseiro("Igor Santos", 8976543, new Date(11, 5, 1985), 900);

        bls.setBolsa(1050);

        System.out.println("Aluno: " + al.getName());
        System.out.println(al);

        System.out.println("Bolseiro: " + bls.getName() + ", cc: " + bls.getCc() + ", NMec: " + bls.getNMec() + ", Bolsa: " + bls.getBolsa());
        System.out.println(bls);    

    }
    
}

