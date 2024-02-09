//
// Algoritmos e Estruturas de Dados --- 2023/2024
//
// Joaquim Madeira, Joao Manuel Rodrigues - June 2021, Nov 2023
//
// Digraph - Using a list of adjacency lists representation
//

#include "Digraph.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "IntegersStack.h"
#include "instrumentation.h"


struct _DigraphHeader {
  uint numVertices; // number of vertices in graph
  uint numEdges;    // number of edges in graph
  uint maxEdges;    // maximum number of edges allowed
  uint *inDeg;      // inDeg[V] = in-degree of vertex V
  uint *outDeg;     // outDeg[V] = out-degree of vertex V
  uint *adjPos;     // adjPos[V] = position of V's adjacent vertices in adjVert
  uint *adjVert;    // array adjacent vertices (edges)
};


// DIGRAPH operations and properties

// Create a graph.
//   numVertices: number of vertices
//   maxEdges:    maximum expected number of edges
//   return:      the pointer to the created Graph structure (never NULL)
// The graph is created with all vertices but no edges.
// 
// Dealing with errors:
//   If an error occurs, the function should print a message and abort.
//   It should only return if a valid digraph is actually created.
//
Digraph* DigraphCreate(uint numVertices, uint maxEdges) {
  // COMPLETE...
  Digraph* g = (Digraph*)malloc(sizeof(Digraph));
  if(g==NULL){
    abort();
  }

  g->numVertices = numVertices;
  g->numEdges = 0;
  g->maxEdges = maxEdges;

  g->inDeg = (uint*)calloc(numVertices, sizeof(uint)); //memorias, tudo o mesmoo
  g->outDeg = (uint*)calloc(numVertices, sizeof(uint));
  g->adjPos = (uint*)calloc(numVertices + 1, sizeof(uint));
  g->adjVert = (uint*)malloc(maxEdges * sizeof(uint));

  if(g->inDeg == NULL || g->outDeg == NULL || g->adjPos == NULL || g->adjVert == NULL) {
    abort();
  }

  for(uint i = 0; i <= numVertices; i++) {
    g->adjPos[i] = 0;
  } //iniciar array

  return g;
}


void DigraphDestroy(Digraph** p) {
  // COMPLETE...
  assert(*p != NULL);
  Digraph *g = *p;

  free(g->inDeg);//libertar. tudo a mesma coisa
  free(g->outDeg);
  free(g->adjPos);
  free(g->adjVert);

  free(g);
  *p = NULL;
}

// Read graph from a file in Sedgwick's format (like Trabalho2).
//   fname:  the name of the file to open and read.
//   return: the pointer to the newly created digraph.
//
// Note:
//   You must read the first two numbers (isDigraph and isWeighted) and
//   check if isDigraph == 1 and isWeighted == 0.  Otherwise, abort!
//
// Dealing with errors:
//   If an error occurs, the function should print a message and abort.
//   It should only return if a valid digraph is actually created.
//
Digraph* DigraphLoadFile(const char *fname) {
  assert(fname != NULL);

  // COMPLETE...
  FILE *file = fopen(fname, "r");
  if (file == NULL) {
    printf("Erro\n");
    exit(0);
  }

  int isDigraph, isWeighted;
  int read = fscanf(file, "%d %d", &isDigraph, &isWeighted);

  if (read != 2 || isDigraph != 1 || isWeighted != 0) {
    printf("Não é Digrafo\n");
    fclose(file);
    exit(0);
  }//ve se é grafo orientad

  uint numVertices, numEdges;
  read = fscanf(file, "%u %u", &numVertices, &numEdges);
  if (read != 2) {
    printf("Não é Digrafo\n");
    fclose(file);
    exit(0);
  }//le as arestas e vertices

  Digraph* g = DigraphCreate(numVertices, numEdges);
  if (g == NULL) {
    printf("Não é Digrafo\n");
    fclose(file);
    abort();
  }//cria o novo grafo orientado

  for (uint i = 0; i < numEdges; i++) {
    uint v, w;
    read = fscanf(file, "%u %u", &v, &w);
    if (read != 2) {
      printf("Não é Digrafo\n");
      DigraphDestroy(&g);
      fclose(file);
      exit(0);
    }
    DigraphAddEdge(g, v, w);
  }//adicona as arestas do ficheiro

  fclose(file);
  return g;
}


uint DigraphGetNumVertices(const Digraph* g) { return g->numVertices; }

uint DigraphGetNumEdges(const Digraph* g) { return g->numEdges; }

uint DigraphGetMaxOutDegree(const Digraph* g) {
  // COMPLETE...
  uint maxOutDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    if (g->outDeg[v] > maxOutDegree) {
      maxOutDegree = g->outDeg[v];
    }
  }
  return maxOutDegree;
}//maior outdegree dos vertices

uint DigraphGetMaxInDegree(const Digraph* g) {
  // COMPLETE...
  uint maxInDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    if (g->inDeg[v] > maxInDegree) {
      maxInDegree = g->inDeg[v];
    }
  }
  return maxInDegree;
}//maior indegree dos vertices

// VERTEX properties

uint DigraphGetVertexOutDegree(Digraph* g, uint v) {
  assert(v < g->numVertices);
  return g->outDeg[v];
}

uint DigraphGetVertexInDegree(Digraph* g, uint v) {
  assert(v < g->numVertices);
  return g->inDeg[v];
}

// EDGE operations and properties

// Add edge v -> w.
int DigraphAddEdge(Digraph* g, uint v, uint w) {
  assert(g != NULL);
  assert(v < g->numVertices);
  assert(w < g->numVertices);

  // COMPLETE...
  if (g->numEdges == g->maxEdges) {
    return 0; //recusado
  }

  uint pos = g->adjPos[v] + g->outDeg[v];//posicoes da nova edge

  for (uint i = g->numEdges; i > pos; i--) {
    g->adjVert[i] = g->adjVert[i - 1];
  }//deslocamento arestas para a ajacencia
  
  g->adjVert[pos] = w; //edge adicionada

  for(uint i = v + 1; i <= g->numVertices; i++) {
    g->adjPos[i]++;
  }//posicao adjacencia e edges

  g->outDeg[v]++;
  g->inDeg[w]++;
  g->numEdges++;

  return 1;  // return 1 if edge was added, 0 if refused
}

// Check if g contains edge v -> w.
//   return: 1 if edge exists, 0 if not.
int DigraphHasEdge(Digraph* g, uint v, uint w) {
  assert(v < g->numVertices);
  assert(w < g->numVertices);
  // COMPLETE...
  for (uint i = g->adjPos[v]; i < g->adjPos[v + 1]; i++) {
    if (g->adjVert[i] == w) {
      return 1; //haedge
    }
  }
  return 0; //nao ha edge
}

// Remove edge v -> w.
//   return: 1 if edge was removed, 0 if edge not found.
int DigraphRemoveEdge(Digraph* g, uint v, uint w) {
  assert(g != NULL);
  assert(v < g->numVertices);
  assert(w < g->numVertices);

  // COMPLETE...
  for (uint i = g->adjPos[v]; i < g->adjPos[v] + g->outDeg[v]; i++) {
    if (g->adjVert[i] == w) {
      for (uint j = i; j < g->adjPos[v] + g->outDeg[v] - 1; j++) {
        g->adjVert[j] = g->adjVert[j + 1];
      }//shift das edges para adjacencia
      
      for(uint i = v + 1; i <= g->numVertices; i++) {
        g->adjPos[i]--;
      }//posicao adjacencia e edges

      g->outDeg[v]--;
      g->inDeg[w]--;
      g->numEdges--;

      return 1; //rip edge
    }
  }
  return 0; // nao encontrada
}

// Return a new array of size (outDeg + 1) where
// element 0 stores the number of vertices adjacent to vertex v and
// the remaining elements store the indices of those adjacent vertices.
// Client must free the array after use!
// NOTE:
//   This function is needed for client use only.
//   (Module functions should access the adjVert array directly!)
uint* DigraphGetAdjacentsTo(const Digraph* g, uint v) {
  assert(v < g->numVertices);

  uint numAdjVertices = g->outDeg[v];

  uint* adjacent = (uint*)calloc(1 + numAdjVertices, sizeof(uint));
  if (adjacent == NULL) abort();

  if (numAdjVertices > 0u) {
    adjacent[0u] = numAdjVertices;
    for (uint e = g->adjPos[v]; e < g->adjPos[v+1u]; e++) {
      adjacent[e + 1u] = g->adjVert[e];
    }
  }

  return adjacent;
}

// CHECKING

int DigraphCheckInvariants(const Digraph* g) {
  assert(g != NULL);
  // COMPLETE...
  if (g->numEdges > g->maxEdges) {
    return 0; // rip edges
  }

  uint totalOutDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    totalOutDegree += g->outDeg[v];
  }//numero edges igual a soma 
  if (g->numEdges != totalOutDegree) {
    return 0; // rip edges
  }

  uint totalInDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    totalInDegree += g->inDeg[v];
  }//igual numero de edges
  if (g->numEdges != totalInDegree) {
    return 0; // rip edges
  }

  uint maxOutDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    if (g->outDeg[v] > maxOutDegree) {
      maxOutDegree = g->outDeg[v];
    }//esta dentro do limite
  }
  if (maxOutDegree > g->numVertices) {
    return 0; //sera q sao mais que vertices
  }

  uint maxInDegree = 0;
  for (uint v = 0; v < g->numVertices; v++) {
    if (g->inDeg[v] > maxInDegree) {
      maxInDegree = g->inDeg[v];
    }//esta dentro dos limites
  }
  if (maxInDegree > g->numVertices) {
    return 0; // mais que vertices
  }

  for (uint v = 0; v < g->numVertices; v++) {
    if (g->adjPos[v] > g->adjPos[v + 1]) {
      return 0; // ordem adjacencia nao esta por ordem
    }//verificar posicoes
  }

  return 1;  // return 1 if everything OK, 0 if not
}

// DISPLAYING

// Print a sequence of n indices (0, 1, ..., n-1)
void _printIndex(uint n) {
  for (uint i = 0u; i < n; i++)
    printf(" %3u", i);
  printf("\n");
}

// Print contents of an array
void _printArray(uint *array, uint n) {
  for (uint i = 0u; i < n; i++)
    printf(" %3u", array[i]);
  printf("\n");
}

// Display internal structure of the graph (for debugging).
void DigraphDisplayStructure(const Digraph* g) {
  printf("// numVertices: %u\n", g->numVertices);
  printf("// numEdges   : %u\n", g->numEdges);
  printf("// maxEdges   : %u\n", g->maxEdges);
  printf("//          v :"); _printIndex(g->numVertices);
  printf("// inDeg      :"); _printArray(g->inDeg, g->numVertices);
  printf("// outDeg     :"); _printArray(g->outDeg, g->numVertices);
  printf("// adjPos     :"); _printArray(g->adjPos, g->numVertices + 1u);
  printf("//          e :"); _printIndex(g->numEdges);
  printf("// adjVert    :"); _printArray(g->adjVert, g->numEdges);
}

// Display graph on the console using DOT format with comments.
// To draw the graph, you can use dot (from Graphviz) or paste result on:
//   https://dreampuf.github.io/GraphvizOnline
void DigraphDisplay(const Digraph* g) {
  printf("digraph {\n");
  printf("  // Vertices: %2u\n", g->numVertices);
  printf("  // Edges: %2u\n", g->numEdges);
  printf("  // MaxInDegree: %u\n", DigraphGetMaxInDegree(g));
  printf("  // MaxOutDegree: %u\n", DigraphGetMaxOutDegree(g));
  
  for (uint v = 0u; v < g->numVertices; v++) {
    for (uint e = g->adjPos[v]; e < g->adjPos[v+1u]; e++) {
      uint w = g->adjVert[e];
      printf("  %2u -> %2u\n", v, w);
    }
  }
  printf("}\n");
  DigraphDisplayStructure(g);
  printf("// CHECK INVARIANTS: %d\n", DigraphCheckInvariants(g));
  printf("// ------\n\n");
}


// CHECK STRONGLY CONNECTED PROPERTY

// Add auxiliary functions here, if needed...
void auxiliar(const Digraph *g, uint v, int *visited) {
  visited[v] = 1;
  uint start = g->adjPos[v];
  uint end;
  if (v == g->numVertices - 1) {
    end = g->numEdges;//se v for o fim é o total de arestas
  } else {
    end = g->adjPos[v+1];//ao contrario
  }
  for (uint i = start; i < end; i++) {
    uint w = g->adjVert[i];
    if (!visited[w]) {
      auxiliar(g, w, visited);//se w nao foi visitado faz DFS por w
    }
  }
}//depth-first searches (DFS)


// Check if given graph is strongly connected.
// MANDATORY: Use repeated depth-first searches.
int DigraphIsStronglyConnected(const Digraph* g) {
  assert(g != NULL);
  // COMPLETE...
  int *visited = malloc(g->numVertices * sizeof(int));
  if (visited == NULL) {
    printf("Erro\n");
    exit(0);
  }

  for (uint v = 0; v < g->numVertices; v++) {
    for (uint i = 0; i < g->numVertices; i++) {
      visited[i] = 0;
    }
    auxiliar(g, v, visited);//busca DFS
    for (uint i = 0; i < g->numVertices; i++) {
      if (!visited[i]) {
        free(visited);
        return 0; //n é conexo
      }
    }
  }
  free(visited);
  return 1;  // 1 if strongly connected 0 if not
}

