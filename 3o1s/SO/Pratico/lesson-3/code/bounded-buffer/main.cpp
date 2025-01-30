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

#include "process.h"
#include "fifo.h"

static void printUsage(FILE* fp, const char* cmd)
{
    fprintf(fp, "Synopsis %s [options]\n"
            "\t----------+--------------------------------------------\n"
            "\t  Option  |          Description                       \n"
            "\t----------+--------------------------------------------\n"
            "\t -i num   | number of items per producer (dfl: 500)    \n"
            "\t -p num   | number of producers (dfl: 5)               \n"
            "\t -c num   | number of consumers (dfl: 5)               \n"
            "\t -h       | this help                                  \n"
            "\t----------+--------------------------------------------\n", cmd);
}

//////////////////////////////////////////////////////////////////////

/*
 * Each producer will produce values from 1 to ni and will insert them into the fifo.
 * Note that the same value is placed into fields v1 and v2 of a fifo item.
 */
void producer(uint32_t id, Fifo *f, uint32_t ni)
{
    for (uint32_t i = 1; i <= ni; i++)
    {
        /* insert item into fifo and show it */
        uint32_t v = id * 1000000 + i; // the value inserted includes the id 
        Item item = {id, v, v};
        fifoInsert(f, item);
    }
}

//////////////////////////////////////////////////////////////////////

/*
 * As the number of consumers can be different from the number of producers,
 * no way to know how many items will be retrieved by each consumer.
 * So, each consumer works in an infinite loop, retrieving items and printing them.
 * If the item retrieved is anomalous, it is printed 
 */
void consumer(uint32_t id, Fifo *f)
{
    while (true)
    {
        //usleep(0);
        /* retrieve item from fifo */
        Item item = fifoRetrieve(f);

        if (item.id == 0)
        {
            printf("Consumer %u received termination signal.\n", id);
            break;  // terminate the consumer process
        }

        /* print it */
        uint32_t id1 = item.v1 / 1000000;
        uint32_t id2 = item.v2 / 1000000;
        if (item.id == 0 or item.v1 == 0 or id1 != item.id or id2 != item.id or item.v1 != item.v2)
            printf("\e[31;01mConsumer %u retrieved (%u,%u,%u) from the fifo\e[0m\n", id, item.id, item.v1, item.v2);
    }
}

//////////////////////////////////////////////////////////////////////

int main (int argc, char *argv[])
{
    /* */
    uint32_t ni = 500;    /* number of items */
    uint32_t np = 5;      /* number of producers */
    uint32_t nc = 5;      /* number of consumers */

    /* command line arguments */
    const char *optstr = "i:p:c:d:s:h";

    int option;
    do
    {
        switch ((option = getopt(argc, argv, optstr)))
        {
            case 'i': // number of items produced per producer
                ni = atoi(optarg);
                break;

            case 'p': // number of producers
                np = atoi(optarg);
                break;

            case 'c': // number of consumers
                nc = atoi(optarg);
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
        }
    } while (option >= 0);

    printf("Parameters: %d producers, %d consumers, %d items\n", np, nc, ni);

    /* create the shared memory and init it as a fifo  */
    int shmid = pshmget(IPC_PRIVATE, sizeof(Fifo), IPC_CREAT | 0600);
    Fifo *theFifo = (Fifo *)pshmat(shmid, NULL, 0);
    fifoInit(theFifo);

    /* launch child processes to play as consumers */
    pid_t cpid[nc];
    for (uint32_t i = 0; i < nc; i++)
    {
        if ((cpid[i] = pfork()) == 0)
        {
            consumer(i+1, theFifo);
            exit(EXIT_SUCCESS);
        }
    }

    /* launch child processes to play as producers */
    pid_t ppid[np];
    for (uint32_t i = 0; i < np; i++)
    {
        if ((ppid[i] = pfork()) == 0)
        {
            producer(i+1, theFifo, ni);
            exit(EXIT_SUCCESS);
        }
    }

    /* wait for producers fo finish */
    for (uint32_t i = 0; i < np; i++)
    {
        pwaitpid(ppid[i], NULL, 0);
        printf("Producer %u finished\n", i+1);
    }

    /* kill the consumers after all producers are done */
    /*for (uint32_t i = 0; i < nc; i++)
    {
        pkill(cpid[i], SIGTERM);  // Envia um sinal de término (SIGTERM) aos consumidores
    }*/

    for (uint32_t i = 0; i < nc; i++)
    {
        Item dummyItem = {0, 0, 0};  // id == 0 signals termination
        fifoInsert(theFifo, dummyItem);
    }

    /* wait for consumers fo finish */
    for (uint32_t i = 0; i < nc; i++)
    {
        pwaitpid(cpid[i], NULL, 0);
        printf("Consumer %u finished\n", i+1);
    }

    /* remove resources */
    fifoDestroy(theFifo);
    pshmdt(theFifo);
    pshmctl(shmid, IPC_RMID, NULL);

    return 0;
}

