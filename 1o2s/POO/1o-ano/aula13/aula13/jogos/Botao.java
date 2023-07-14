package aula13.aula13.jogos;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

// jogador: true->X ; false->O
 
public class Botao extends JToggleButton implements ActionListener {

  public Botao(int lin,int col,Tabuleiro tab) {
    super("");
    addActionListener(this);
    this.lin = lin;
    this.col = col;
    this.tab = tab;
    setFont(new Font("Helvetica",Font.BOLD,40));
  }

  public void actionPerformed(ActionEvent event) { // invocado quando o botão é premido
    if (jogadorX)
      setText("X");
    else
      setText("O");
    setEnabled(false);

    tab.joga(lin,col,jogadorX); // nova jogada

    jogadorX = !jogadorX;
  }

  public static void iniciaJogadorX(boolean jogadorX) {
    Botao.jogadorX = jogadorX;
  }

  protected Tabuleiro tab;
  protected int lin,col;;
  protected static boolean jogadorX;
}

