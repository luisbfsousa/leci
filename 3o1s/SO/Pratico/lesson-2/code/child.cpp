#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(int argc, char *argv[])
{
    printf("I'm the child: PID = %d, PPID = %d\n", getpid(), getppid());
    usleep(500);
    printf("I'm the child: PID = %d, PPID = %d\n", getpid(), getppid());

   return EXIT_SUCCESS;
}
