#include <dbc.h>
#include <string.h>
#include "pfifo.h"

static void print_pfifo(PriorityFIFO* pfifo);
static int empty_pfifo(PriorityFIFO* pfifo);
static int full_pfifo(PriorityFIFO* pfifo);

// TODO point: initialization changes may be required in this function
void init_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");  // a false value indicates a program error

   memset(pfifo->array, 0, sizeof(pfifo->array));
   pfifo->inp = pfifo->out = pfifo->cnt = 0;
   pfifo->is_closed = 0;
}

/* --------------------------------------- */

// TODO point: termination changes may be required in this function
void term_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");  // a false value indicates a program error
   require (is_closed_pfifo(pfifo), "FIFO open");

}

/* --------------------------------------- */

// TODO point: synchronization changes may be required in this function
void insert_pfifo(PriorityFIFO* pfifo, int id, int priority)
{
   require (pfifo != NULL, "NULL pointer to FIFO");  // a false value indicates a program error
   require (id >= 0 && id <= MAX_ID, "invalid id");  // a false value indicates a program error
   require (priority > 0 && priority <= MAX_PRIORITY, "invalid priority value");  // a false value indicates a program error
   require (pfifo->is_closed || !full_pfifo(pfifo), "open FIFO is full");  // IMPORTANT: in a shared fifo, it may not result from a program error!

   //printf("[insert_pfifo] value=%d, priority=%d, pfifo->inp=%d, pfifo->out=%d\n", id, priority, pfifo->inp, pfifo->out);

   if (!pfifo->is_closed)
   {
      int idx = pfifo->inp;
      int prev = (idx + FIFO_MAXSIZE - 1) % FIFO_MAXSIZE;
      while((idx != pfifo->out) && (pfifo->array[prev].priority > priority))
      {
         //printf("[insert_pfifo] idx=%d, prev=%d\n", idx, prev);
         pfifo->array[idx] = pfifo->array[prev];
         idx = prev;
         prev = (idx + FIFO_MAXSIZE - 1) % FIFO_MAXSIZE;
      }
      //printf("[insert_pfifo] idx=%d, prev=%d\n", idx, prev);
      pfifo->array[idx].id = id;
      pfifo->array[idx].priority = priority;
      pfifo->inp = (pfifo->inp + 1) % FIFO_MAXSIZE;
      pfifo->cnt++;
      //printf("[insert_pfifo] pfifo->inp=%d, pfifo->out=%d\n", pfifo->inp, pfifo->out);
   }
}

/* --------------------------------------- */

// TODO point: synchronization changes may be required in this function
int retrieve_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");   // a false value indicates a program error
   require (pfifo->is_closed || !empty_pfifo(pfifo), "open FIFO is empty");  // IMPORTANT: in a shared fifo, it may not result from a program error!

   int result = -1;
   if (!pfifo->is_closed)
   {
      check_valid_patient_id(pfifo->array[pfifo->out].id);
      check_valid_priority(pfifo->array[pfifo->out].priority);

      result = pfifo->array[pfifo->out].id;
      pfifo->array[pfifo->out].id = INVALID_ID;
      pfifo->array[pfifo->out].priority = INVALID_PRIORITY;
      pfifo->out = (pfifo->out + 1) % FIFO_MAXSIZE;
      pfifo->cnt--;

      // update priority of all remaing elements (increase priority by one)
      int idx = pfifo->out;
      for(int i = 1; i <= pfifo->cnt; i++)
      {
         if (pfifo->array[idx].priority > 1 && pfifo->array[idx].priority != INVALID_PRIORITY)
            pfifo->array[idx].priority--;
         idx = (idx + 1) % FIFO_MAXSIZE;
      }
   }

   ensure ((result >= 0 && result <= MAX_ID) || is_closed_pfifo(pfifo), "OPEN FIFO with an invalid id");  // a false value indicates a program error

   return result;
}

// TODO point: synchronization changes may be required in this function
void close_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");           // a false value indicates a program error
   require (!is_closed_pfifo(pfifo), "FIFO already closed");  // a false value indicates a program error

   pfifo->is_closed = 1;
}

// TODO point: synchronization changes may be required in this function
int is_closed_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");   // a false value indicates a program error

   return pfifo->is_closed;
}

/* --------------------------------------- */

static int empty_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");   // a false value indicates a program error

   return pfifo->cnt == 0;
}

/* --------------------------------------- */

static int full_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");   // a false value indicates a program error

   return pfifo->cnt == FIFO_MAXSIZE;
}

/* --------------------------------------- */

static void print_pfifo(PriorityFIFO* pfifo)
{
   require (pfifo != NULL, "NULL pointer to FIFO");   // a false value indicates a program error

   int idx = pfifo->out;
   for(int i = 1; i <= pfifo->cnt; i++)
   {
      check_valid_patient_id(pfifo->array[pfifo->out].id);
      check_valid_priority(pfifo->array[pfifo->out].priority);
      printf("[%02d] value = %d, priority = %d\n", i, pfifo->array[idx].id, pfifo->array[idx].priority);
      idx = (idx + 1) % FIFO_MAXSIZE;
   }
}

