/*
 *  \author Luis Sousa 108583
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>
#include <string.h>

namespace group 
{

// ================================================================================== //

    void pctPrint(FILE *fout)
    {
        soProbe(303, "%s(%p)\n", __func__, fout);

        require(pctList != UNDEF_PCT_NODE, "Module is not in a valid open state!");
        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");
        //throw Exception(ENOSYS, __func__);
        /* TODO POINT: Replace next instruction with your code */
        fprintf(fout, "+======================================================================================================================+\n");
        fprintf(fout, "|                                                   PCT module state                                                   |\n");
        fprintf(fout, "+-------+-------------+-------------+-------------+------------+------------+-------------+--------------+-------------+\n");
        fprintf(fout, "|  PID  |    state    |  admission  |  lifetime   | store time | start time | finish time | memory start | memory size |\n");
        fprintf(fout, "+-------+-------------+-------------+-------------+------------+------------+-------------+--------------+-------------+\n");

        PctNode* currentNode = pctList;
        while (currentNode != NULL) {
            const char *stateStr;
            switch (currentNode->pcb.state) {
                case NEW: stateStr = "NEW"; break;
                case RUNNING: stateStr = "RUNNING"; break;
                case READY: stateStr = "READY"; break;
                case SWAPPED: stateStr = "SWAPPED"; break;
                case TERMINATED: stateStr = "TERMINATED"; break;
                default: stateStr = "UNKNOWN"; break;
            }

            char finishTimeStr[12];
            if (currentNode->pcb.finishTime == UNDEF_TIME) {
                strcpy(finishTimeStr, "UNDEF");
            } else {
                snprintf(finishTimeStr, sizeof(finishTimeStr), "%.1f", currentNode->pcb.finishTime);
            }

            fprintf(fout, "| %5u | %-11s | %11.1f | %11.1f | %10.1f | %10.1f | %11s | %12u | %11u |\n",
                currentNode->pcb.pid,
                stateStr,
                currentNode->pcb.admissionTime,
                currentNode->pcb.lifetime,
                currentNode->pcb.storeTime,
                currentNode->pcb.startTime,
                finishTimeStr,
                currentNode->pcb.memStart,
                currentNode->pcb.memSize);
            currentNode = currentNode->next;
        }

        fprintf(fout, "+======================================================================================================================+\n");
    }

// ================================================================================== //

} // end of namespace group

