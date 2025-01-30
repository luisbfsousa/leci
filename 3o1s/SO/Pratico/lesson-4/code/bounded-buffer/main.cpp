/*
 * An implementation of the bounded-buffer problem
 *
 * NC producers and NC consumers communicate through a fifo.
 * The fifo has a fixed capacity.
 * NI items will be produced by the producers and consume by the consumers.
 * An item is composed of 2 equal integers, ranging from 1 to NI.
 */

#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "utils.h"
#include "thread.h"
#include "fifo.h"

int EXIT_ITEM = -1;

bool verbose = false;
static void printUsage(FILE* fp, const char* cmd)
{
    fprintf(fp, "Synopsis %s [options]\n"
            "\t----------+--------------------------------------------\n"
            "\t  Option  |          Description                       \n"
            "\t----------+--------------------------------------------\n"
            "\t -i num   | number of items per producer (dfl: 500)    \n"
            "\t -p num   | number of producers (dfl: 5)               \n"
            "\t -c num   | number of consumers (dfl: 5)               \n"
            "\t -V       | verbose mode                               \n"
            "\t -h       | this help                                  \n"
            "\t----------+--------------------------------------------\n", cmd);
}

//////////////////////////////////////////////////////////////////////

static Fifo *theFifo = NULL; // being static, this pointer is accessible by all threads

//////////////////////////////////////////////////////////////////////

/*
 * Each producer will produce values from 1 to ni and will insert them into the fifo.
 * Note that the same value is placed into fields v1 and v2 of an item.
 */
void producerLifeCycle(uint32_t id, uint32_t ni)
{
    for (uint32_t i = 1; i <= ni; i++)
    {
        /* insert item into fifo and show it */
        uint32_t v = id * 1000000 + i; // the value inserted includes the id 
        Item item = {id, v, v};
        fifoInsert(theFifo, item);
        if (verbose) printf("\e[36;01mProducer %u insert (%u,%u,%u) into the fifo\e[0m\n", id, id, v, v);
    }
}

struct ProducerData 
{
    uint32_t id;
    uint32_t ni;
};

void *producerThread(void *arg)
{
    ProducerData *p = (ProducerData*)arg;   // we know arg is a pointer to a ProducerData structure
    producerLifeCycle(p->id, p->ni);
    thread_exit(NULL);
    return NULL;
}

//////////////////////////////////////////////////////////////////////

/*
 * As the number of consumers can be different from the number of producers,
 * no way to know how many items will be retrieved by each consumer.
 * So, each consumer works in an infinite loop, retrieving items and printing them.
 * If the item retrieved is anomalous, it is printed 
 */
void consumerLifeCycle(uint32_t id)
{
    while (true)
    {
        /* retrieve item from fifo */
        Item item = fifoRetrieve(theFifo);

        /* print it */
        uint32_t id1 = item.v1 / 1000000;
        uint32_t id2 = item.v2 / 1000000;
        bool raceCondition = (item.id == 0) or (item.v1 == 0) or (id1 != item.id) or (id2 != item.id) or (item.v1 != item.v2);
        if (raceCondition)
            printf("\e[31;01mConsumer %u retrieved (%u,%u,%u) from the fifo\e[0m\n", id, item.id, item.v1, item.v2);
        else if (verbose) 
            printf("\e[36;01mConsumer %u retrieved (%u,%u,%u) from the fifo\e[0m\n", id, item.id, item.v1, item.v2);
    }
}


//////////////////////////////////////////////////////////////////////

void *consumerThread(void *arg){
    uint32_t *p = (uint32_t*)arg;
    consumerLifeCycle(*p);
    pthread_exit(NULL);
    return NULL;
}

//////////////////////////////////////////////////////////////////////

int main (int argc, char *argv[])
{
    /* */
    uint32_t ni = 500;    /* number of items */
    uint32_t np = 5;      /* number of producers */
    uint32_t nc = 5;      /* number of consumers */

    /* command line arguments */
    const char *optstr = "i:p:c:Vh";

    int option;
    do
    {
        switch ((option = getopt(argc, argv, optstr)))
        {
            case 'i': // number of items produced per producer
                ni = atoi(optarg);
                if (ni < 1 || ni > 999999)
                {
                   fprintf(stderr, "ERROR: invalid value (%d)\n", ni);
                   exit(1);
                }
                break;

            case 'p': // number of producers
                np = atoi(optarg);
                if (np < 1)
                {
                   fprintf(stderr, "ERROR: invalid value (%d)\n", np);
                   exit(1);
                }
                break;

            case 'c': // number of consumers
                nc = atoi(optarg);
                if (nc < 1)
                {
                   fprintf(stderr, "ERROR: invalid value (%d)\n", nc);
                   exit(1);
                }
                break;

            case 'V': // verbose mode
                verbose = true;
                break;
                
            case 'h':
                printUsage(stdout, basename(argv[0]));
                return 0;
                break;

            case -1:
                break;

            default:
                fprintf(stderr, "Not valid option\n");
                printUsage(stderr, basename(argv[0]));
                return EXIT_FAILURE;
        } //////////////////////////////////////////////////////////////////////
    } while (option != EXIT_ITEM);

    // Create consumer threads
    pthread_t consumers[nc];
    uint32_t consumer_ids[nc];
    for (uint32_t i = 0; i < nc; ++i) {
        consumer_ids[i] = i;
        pthread_create(&consumers[i], NULL, consumerThread, &consumer_ids[i]);
    }

    sleep(2);

    // Send termination signal to all consumer threads
    for (uint32_t i = 0; i < nc; ++i) {
        consumerLifeCycle(EXIT_ITEM); // Assuming consumerLifeCycle handles EXIT_ITEM correctly
    }

    // Join all consumer threads
    for (uint32_t i = 0; i < nc; ++i) {
        pthread_join(consumers[i], NULL);
    }

    //////////////////////////////////////////////////////////////////////

    printf("Parameters: %d producers, %d consumers, %d items\n", np, nc, ni);

    /* create the shared memory and init it as a fifo */
    theFifo = (Fifo*)mem_alloc(sizeof(Fifo));
    fifoInit(theFifo);

    /* launching child threads to play as consumers */
    pthread_t cthr[nc];
    uint32_t cdata[nc];
    for (uint32_t i = 0; i < nc; i++)
    {
        cdata[i] = i+1;
        thread_create(&cthr[i], NULL, consumerThread, &cdata[i]);
    }

    /* launching child processes to play as producers */
    pthread_t pthr[np];
    ProducerData pdata[np];
    for (uint32_t i = 0; i < np; i++)
    {
        pdata[i] = {i+1, ni};
        thread_create(&pthr[i], NULL, producerThread, &pdata[i]);
    }

    /* wait for producers to finish */
    for (uint32_t i = 0; i < np; i++)
    {
        thread_join(pthr[i], NULL);
        printf("Producer %u finished\n", i+1);
    }

    /* wait for consumers to finish */
    for (uint32_t i = 0; i < nc; i++)
    {
        thread_join(cthr[i], NULL);
        printf("Consumer %u finished\n", i+1);
    }

    /* destroy fifo */
    fifoDestroy(theFifo);

    printUsage(stdout, argv[0]);

    return 0;
}

