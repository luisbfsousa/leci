#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#define NTIMES 20

int main(void)
{
    printf("PID = %u\n", getpid());
    for (uint32_t i = 0; i < NTIMES; i++)
    { 
        printf ("\r%08u ", i);
        fflush (stdout);
        usleep(500000);
    }
    printf ("\n");

    return EXIT_SUCCESS;
}
