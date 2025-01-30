#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void) {
    //printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

    pid_t t_rec = pfork();
    if (t_rec == 0) {
        int child = 0;
        while (child < 10) {
            child++;
            printf("Child number %d\n", child);
        }
    } else {
        int parent = 10;
        pwait(NULL);
        while (parent < 20) { 
            parent++;
            printf("Parent number %d\n", parent);
        }
    }
    return 0;
}