//
// Algoritmos e Estruturas de Dados --- 2023/2024
//
// Joaquim Madeira, Joao Manuel Rodrigues - April 2020, November 2023
//
// Adapted from Tomás Oliveira e Silva, AED, September 2015
//
// Integers stack (First In Last Out) implementation based on an array
//

#include "IntegersStack.h"

#include <assert.h>
#include <stdlib.h>

struct _IntStack {
  int max_size;  // maximum stack size
  int cur_size;  // current stack size
  int* data;     // the stack data (stored in an array)
};

Stack* StackCreate(int size) {
  assert(size >= 1 && size <= 1000000);
  Stack* s = (Stack*)malloc(sizeof(Stack));
  if (s == NULL) abort();
  s->max_size = size;
  s->cur_size = 0;
  s->data = (int*)malloc(size * sizeof(int));
  if (s->data == NULL) {
    free(s);
    abort();
  }
  return s;
}

void StackDestroy(Stack** p) {
  assert(*p != NULL);
  Stack* s = *p;
  free(s->data);
  free(s);
  *p = NULL;
}

void StackClear(Stack* s) { s->cur_size = 0; }

int StackSize(const Stack* s) { return s->cur_size; }

int StackIsFull(const Stack* s) { return (s->cur_size == s->max_size); }

int StackIsEmpty(const Stack* s) { return (s->cur_size == 0); }

int StackPeek(const Stack* s) {
  assert(s->cur_size > 0);
  return s->data[s->cur_size - 1];
}

void StackPush(Stack* s, int i) {
  assert(s->cur_size < s->max_size);
  s->data[s->cur_size++] = i;
}

int StackPop(Stack* s) {
  assert(s->cur_size > 0);
  return s->data[--(s->cur_size)];
}
