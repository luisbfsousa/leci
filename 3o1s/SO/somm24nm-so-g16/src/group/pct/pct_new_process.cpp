/*
 *  \author Luis Sousa 108583
 */

#include "somm24.h"

#include <stdint.h>
#include <stdlib.h>

namespace group 
{

// ================================================================================== //

    uint16_t pctNewProcess(double admissionTime, double lifetime, uint32_t memSize)
    {
        soProbe(304, "%s(%0.1f, %0.1f, %#x)\n", __func__, admissionTime, lifetime, memSize);

        require(pctList != UNDEF_PCT_NODE, "Module is not in a valid open state!");
        require(admissionTime >= 0, "Bad admission time");
        require(lifetime > 0, "Bad lifetime");
        require(memSize > 0, "Bad memory size");
        //throw Exception(ENOSYS, __func__);
        /* TODO POINT: Replace next instruction with your code */
        
        static int pidIndex = 0; 
        require(pidIndex < MAX_JOBS, "No more PIDs available!");

        uint16_t pid = pctPID[pidIndex++];
        if (pid == 0)
            throw Exception(EINVAL, "No valid PID available");

        PctNode *newNode = (PctNode *)malloc(sizeof(PctNode));
        if (newNode == NULL)
            throw Exception(ENOMEM, "Failed to allocate memory for new PCT node");

        newNode->pcb.pid = pid;
        newNode->pcb.state = NEW; 
        newNode->pcb.admissionTime = admissionTime;
        newNode->pcb.lifetime = lifetime;
        newNode->pcb.storeTime = UNDEF_TIME;
        newNode->pcb.startTime = UNDEF_TIME;
        newNode->pcb.finishTime = UNDEF_TIME;
        newNode->pcb.memStart = UNDEF_ADDRESS;
        newNode->pcb.memSize = memSize;
        newNode->next = NULL;

        if (pctList == NULL) {
            pctList = newNode;
        } else {
            PctNode *current = pctList;
            PctNode *previous = NULL;

            while (current != NULL && current->pcb.pid < pid) {
                previous = current;
                current = current->next;
            }

            if (previous == NULL) {
                newNode->next = pctList;
                pctList = newNode;
            } else {
                previous->next = newNode;
                newNode->next = current;
            }
        }

        return pid;
    }

// ================================================================================== //

} // end of namespace group

