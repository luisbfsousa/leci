#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <libgen.h>
#include <stdlib.h>
#include <string.h>

#include "fifo.h"
#include "thread.h"

void fifoInit(Fifo *f)
{
    /* init fifo */
    f->in = f->out = 0;
    f->count = 0;
    memset(f->data, 0x0, N*sizeof(Item));
    
    /* init conditions variables */
    cond_init(&f->notFull, NULL);
    cond_init(&f->notEmpty, NULL);

    /* init access mutex */
    mutex_init(&f->access, NULL);
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
    /* lock access on entry */
    mutex_lock(&f->access);

    /* wait until fifo is not full */
    while (fifoIsFull(f))
    {
        cond_wait(&f->notFull, &f->access);
    }

    /* make insertion */
    f->data[f->in] = item;
    f->in = (f->in + 1) % N;
    f->count++;

    /* signal fifo is not empty */
    cond_broadcast(&f->notEmpty);

    /* unlock access before quitting */
    mutex_unlock(&f->access);
}

Item fifoRetrieve(Fifo *f)
{
    /* lock access on entry */
    mutex_lock(&f->access);

    /* wait until fifo is not empty */
    while (fifoIsEmpty(f))
    {
        cond_wait(&f->notEmpty, &f->access);
    }

    /* memorize item to be returned */
    Item ret = f->data[f->out];

    /* update fifo */
    f->out = (f->out + 1) % N;
    f->count--;

    /* signal fifo is not empty */
    cond_broadcast(&f->notFull);

    /* unlock access before quitting */
    mutex_unlock(&f->access);

    /* return item */
    return ret;
}

void fifoDestroy(Fifo *f)
{
    cond_destroy(&f->notFull);
    cond_destroy(&f->notEmpty);
    mutex_destroy(&f->access);
    f->count = 0;
    f->in = f->out = 0;
}
