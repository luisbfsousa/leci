#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <libgen.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>

#include "fifo.h"
#include "process.h"

#define ACCESS 0
#define SLOTS 1
#define ITEMS 2

void fifoInit(Fifo *f)
{
    /* init fifo */
    f->in = f->out = 0;
    f->count = 0;
    memset(f->data, 0x0, N*sizeof(Item));
    
    /* init semaphores */
    f->sem = psemget(IPC_PRIVATE, 3, IPC_CREAT | 0600);
    for (uint32_t i = 0; i < N; i++) 
    {
        psem_up(f->sem, SLOTS);
    }
    psem_up(f->sem, ACCESS);
}

bool fifoIsFull(Fifo *f)
{
    return f->count == N;
}

bool fifoIsEmpty(Fifo *f)
{
    return f->count == 0;
}

void fifoInsert(Fifo *f, Item item)
{
    /* wait until fifo is not full */
    psem_down(f->sem, SLOTS);

    /* lock access to fifo */
    psem_down(f->sem, ACCESS);

    /* make insertion */
    f->data[f->in] = item;
    f->in = (f->in + 1) % N;
    f->count++;

    /* release access to fifo */
    psem_up(f->sem, ACCESS);

    /* notify there is one more item available */
    psem_up(f->sem, ITEMS);
}

Item fifoRetrieve(Fifo *f)
{
    /* wait until fifo is not empty */
    psem_down(f->sem, ITEMS);

    /* lock access to fifo */
    psem_down(f->sem, ACCESS);

    /* memorize item to bereturned */
    Item ret = f->data[f->out];

    /* update fifo */
    f->out = (f->out + 1) % N;
    f->count--;

    /* release access to fifo */
    psem_up(f->sem, ACCESS);

    /* notify there is one more slot available */
    psem_up(f->sem, SLOTS);

    /* return item */
    return ret;
}

void fifoDestroy(Fifo *f)
{
    psemctl(f->sem, 0, IPC_RMID);
}
