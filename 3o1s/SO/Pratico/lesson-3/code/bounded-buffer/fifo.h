/*
 * Definition of the FIFO data type and manipulating functions
 *
 * The fifo is defined for a maximum capacity of N items
 */

#ifndef __SO_FSO_2425_IPC_FIFO__
#define __SO_FSO_2425_IPC_FIFO__

#include <stdint.h>
#include <stdlib.h>

#define N 200

struct Item
{ 
    uint32_t id; // id of the producer
    uint32_t v1; // a general purpose field
    uint32_t v2; // another general purpose field
};

struct Fifo
{
    uint32_t count;
    uint32_t in, out;
    Item data[N]; 
    int sem;     // to be used in the sem-safe version
};

void fifoInit(Fifo *f);

bool fifoIsFull(Fifo *f);

bool fifoIsEmpty(Fifo *f);

void fifoInsert(Fifo *f, Item item);

Item fifoRetrieve(Fifo *f);

void fifoDestroy(Fifo *f);

#endif // __SO_FSO_2425_IPC_FIFO__

