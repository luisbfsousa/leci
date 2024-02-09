//
// Algoritmos e Estruturas de Dados --- 2023/2024
//
// Joaquim Madeira, Joao Manuel Rodrigues - June 2021, Dec 2023
//
// ./example3 GRAPH_FILE ...
//     Will load each GRAPH_FILE and run DigraphIsStronglyConnected.
//

#include <stdio.h>
#include <stdlib.h>

#include "Digraph.h"
#include "instrumentation.h"


// Load graph from file and check if Strongly Connected.
void runIsStronglyConnected(const char *fname) {

  Digraph* g = DigraphLoadFile(fname);
  // DigraphDisplay(g);  // Uncomment for debugging

  // STRONGLY CONNECTED?
  printf("FILE: %s\n", fname);
  printf("VERTICES: %u\n", DigraphGetNumVertices(g));
  printf("EDGES: %u\n", DigraphGetNumEdges(g));
  
  InstrReset();
  int result = DigraphIsStronglyConnected(g);
  printf("DigraphIsStronglyConnected: %d\n", result);
  InstrPrint();

  printf("--------\n");

  DigraphDestroy(&g);
}


int main(int argc, char *argv[]) {

  if (argc < 2) {
    fprintf(stderr, "Usage: %s GRAPH_FILE ...\n", argv[0]);
    exit(1);
  }

  InstrCalibrate();

  for (int i = 1; i < argc; i++) {
    char *fname = argv[i];
    runIsStronglyConnected(fname);
  }

  return 0;
}
