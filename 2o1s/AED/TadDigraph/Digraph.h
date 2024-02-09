//
// Algoritmos e Estruturas de Dados --- 2023/2024
//
// Joaquim Madeira, Joao Manuel Rodrigues - June 2021, Nov 2023
//
// Digraph - Using a list of adjacency lists representation
//

#ifndef _DIGRAPH_
#define _DIGRAPH_

typedef unsigned int uint;

typedef struct _DigraphHeader Digraph;

// DIGRAPH operations and properties

Digraph* DigraphCreate(uint numVertices, uint numEdges);

void DigraphDestroy(Digraph** p);

Digraph* DigraphCopy(const Digraph* g);

Digraph* DigraphLoadFile(const char *fname);

uint DigraphGetNumVertices(const Digraph* g);

uint DigraphGetNumEdges(const Digraph* g);

uint DigraphGetMaxOutDegree(const Digraph* g);

uint DigraphGetMaxInDegree(const Digraph* g);

// VERTEX properties

uint DigraphGetVertexOutDegree(Digraph* g, uint v);

uint DigraphGetVertexInDegree(Digraph* g, uint v);

// EDGE operations and properties

int DigraphAddEdge(Digraph* g, uint v, uint w);

int DigraphRemoveEdge(Digraph* g, uint v, uint w);

int DigraphHasEdge(Digraph* g, uint v, uint w);

uint* DigraphGetAdjacentsTo(const Digraph* g, uint v);

// CHECKING

int DigraphCheckInvariants(const Digraph* g);

// DISPLAYING

void DigraphDisplay(const Digraph* g);

// CHECK STRONGLY CONNECTED PROPERTY

int DigraphIsStronglyConnected(const Digraph* g);

#endif  // _DIGRAPH_
