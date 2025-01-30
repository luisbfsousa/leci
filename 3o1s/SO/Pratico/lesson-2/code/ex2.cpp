#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#include "delays.h"
#include "process.h"

int main(void){
    pid_t fork = pfork();
    
    if(fork==0){
        pexecl("/usr/bin/ls", "ls","-l", NULL);
        printf("\n");
    }else{
        pwait(NULL);
        for(int i=0;i<40;i++){
            printf("=");
        }
        printf("\n");
    }
    return 0;
}