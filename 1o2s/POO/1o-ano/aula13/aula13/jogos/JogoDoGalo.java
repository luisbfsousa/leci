package aula13.aula13.jogos;

import java.awt.*;
import javax.swing.*;

public class JogoDoGalo extends JFrame {

   public static void main(String[] args) {
      JogoDoGalo frame = new JogoDoGalo();
      frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      frame.setVisible(true);
      // define jogador inicial (true->X ; false->O)
      Botao.iniciaJogadorX(args.length == 0 || !args[0].equalsIgnoreCase("O"));
   }

   public JogoDoGalo() {
      setLocationByPlatform(true);
      setSize(3 * 70,3 * 70);
      setTitle("Jogo do Galo");

      Tabuleiro tab = new Tabuleiro(this);

      JPanel panel = new JPanel();
      panel.setLayout(new GridLayout(3,3));
      for(int l=1;l <= 3;l++)
         for(int c=1;c <= 3;c++)
            panel.add(new Botao(l,c,tab));
      add(panel,BorderLayout.CENTER);
   }

   public void notificaFim(int resultado) { // -1: ganhou O ; 0: empate ; 1: ganhou X
      assert resultado >= -1 && resultado <= 1;

      String[] texto = {"venceu jogador O","empate","venceu jogador X"};
      JOptionPane.showMessageDialog(getContentPane(),"Resultado: "+texto[resultado+1]);
      System.exit(0);
   }
}

