//
// Algoritmos e Estruturas de Dados --- 2023/2024
//
// Joaquim Madeira, Joao Manuel Rodrigues - June 2021, Dec 2023
//

#include <stdio.h>

#include "Digraph.h"

int main(int argc, char *argv[]) {

  printf("\nTEST: ADD edges in increasing source vertex order!\n");
  Digraph* g1 = DigraphCreate(7, 20);

  DigraphAddEdge(g1, 0, 1);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  DigraphAddEdge(g1, 0, 2);
  DigraphAddEdge(g1, 0, 3);
  DigraphAddEdge(g1, 1, 3);
  DigraphAddEdge(g1, 1, 4);
  DigraphAddEdge(g1, 2, 5);
  DigraphAddEdge(g1, 3, 5);
  DigraphAddEdge(g1, 3, 6);
  DigraphAddEdge(g1, 4, 3);
  DigraphAddEdge(g1, 4, 6);
  DigraphAddEdge(g1, 6, 5);
  DigraphDisplay(g1);

  int r;

  printf("\nTEST: REMOVE edges in decreasing order!\n");
  r = DigraphRemoveEdge(g1, 6, 5);  printf("remove(g1, 6, 5): %d\n", r);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  r = DigraphRemoveEdge(g1, 4, 6);  printf("remove(g1, 4, 6): %d\n", r);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  r = DigraphRemoveEdge(g1, 4, 3);  printf("remove(g1, 4, 3): %d\n", r);
  DigraphDisplay(g1);


  printf("\nTEST: ADD edges in random vertex order!\n");
  Digraph* g2 = DigraphCreate(5, 6);

  DigraphAddEdge(g2, 1, 2);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  DigraphAddEdge(g2, 2, 4);
  DigraphAddEdge(g2, 0, 1);
  DigraphAddEdge(g2, 3, 1);
  DigraphAddEdge(g2, 2, 0);
  DigraphAddEdge(g2, 1, 3);
  DigraphAddEdge(g2, 2, 3);

  DigraphDisplay(g2);

  printf("\nTEST: REMOVE edges in random order (from g1)\n");
  r = DigraphRemoveEdge(g1, 1, 4);  printf("remove(g1, 1, 4): %d\n", r);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  r = DigraphRemoveEdge(g1, 3, 5);  printf("remove(g1, 3, 5): %d\n", r);
  r = DigraphRemoveEdge(g1, 0, 2);  printf("remove(g1, 0, 2): %d\n", r);
  DigraphDisplay(g1);

  printf("\nTEST: REMOVE edges in random order (from g2)\n");
  r = DigraphRemoveEdge(g2, 2, 4);  printf("remove(g2, 2, 4): %d\n", r);
  // DigraphDisplay(g1);    // uncomment and move to show intermediate state
  r = DigraphRemoveEdge(g2, 3, 1);  printf("remove(g2, 3, 1): %d\n", r);
  r = DigraphRemoveEdge(g2, 0, 1);  printf("remove(g2, 0, 1): %d\n", r);
  DigraphDisplay(g2);
  
  r = DigraphHasEdge(g2, 1, 3);  printf("hasEdge(g2, 1, 3): %d\n", r);
  r = DigraphHasEdge(g2, 3, 1);  printf("hasEdge(g2, 3, 1): %d\n", r);

  // CLEANUP
  DigraphDestroy(&g1);
  DigraphDestroy(&g2);

  // TEST LoadFile
  for (int i = 1; i < argc; i++) {
    char *fname = argv[i];
    printf("\nTEST: LoadFile '%s'\n", fname);
    Digraph* g3 = DigraphLoadFile(fname);
    DigraphDisplay(g3);
    DigraphDestroy(&g3);
  }
  if (argc <= 1) {
    printf("\n# To test loading graphs from files, use:\n");
    printf("  %s GRAPH_FILE ...\n", argv[0]);
  }

  return 0;
}
