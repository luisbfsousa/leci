#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <libgen.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>

#include "fifo.h"

void fifoInit(Fifo *f)
{
    f->in = f->out = 0;
    f->count = 0;
    memset(f->data, 0x0, N*sizeof(Item));
}

static bool fifoIsFull(Fifo *f)
{
    return f->count == N;
}

static bool fifoIsEmpty(Fifo *f)
{
    return f->count == 0;
}

void fifoInsert(Fifo *f, Item item)
{
    /* wait until fifo is not full */
    while (fifoIsFull(f))
    {
        sched_yield();
        //usleep(0);
    }

    /* make insertion */
    f->data[f->in] = item;
    f->in = (f->in + 1) % N;
    f->count++;
}

Item fifoRetrieve(Fifo *f)
{
    /* wait until fifo is not empty */
    while (fifoIsEmpty(f))
    {
        sched_yield();
        //usleep(0);
    }

    /* memorize item to be returned */
    Item ret = f->data[f->out];

    /* update fifo */
    f->out = (f->out + 1) % N;
    f->count--;

    /* return item */
    return ret;
}

void fifoDestroy(Fifo *f)
{
    f->count = 0;
    f->in = f->out = 0;
}
