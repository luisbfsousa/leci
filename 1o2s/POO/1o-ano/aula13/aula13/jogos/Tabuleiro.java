package aula13.aula13.jogos;

public class Tabuleiro {

  public Tabuleiro(JogoDoGalo jogo) {
     assert jogo != null;

     this.jogo = jogo;
  }

  public void joga(int lin,int col,boolean jogadorX) {
     // qando o jogo termina, invocar: jogo.notificaFim(resultado());
  }

  public int resultado() { // -1 -> jogador O ; 0 -> empate ; 1 -> jogador X
     int res = 0;

     return res;
  }

  // se conveniente, acrescentar outros métodos públicos

  protected JogoDoGalo jogo;
}
