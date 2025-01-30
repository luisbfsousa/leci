#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void)
{
  printf("Before the fork: PID = %d, PPID = %d\n", getpid(), getppid());

  pid_t ret = pfork();

  printf("After the fork: PID = %d, PPID = %d\n",getpid(), getppid());
  bwRandomDelay(0, 10000);
  printf("  [ret = %d] Was I printed by the parent or by the child process? How can I know it?\n", ret); 

  return EXIT_SUCCESS;
}

