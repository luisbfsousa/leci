/*
 *  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void rdyPrint(FILE *fout)
    {
        soProbe(503, "%s(%p)\n", __func__, fout);

        require(schedulingPolicy == FCFS or schedulingPolicy == SPN, "Module is not in a valid open state!");
        require(rdyList != UNDEF_RDY_NODE and rdyTail != UNDEF_RDY_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        fprintf(fout, "+====================+\n");
        fprintf(fout, "|  RDY Module State  |\n");
        fprintf(fout, "|       (FCFS)       |\n");
        fprintf(fout, "+-------+------------+\n");
        fprintf(fout, "|  PID  |  lifetime  |\n");
        fprintf(fout, "+-------+------------+\n");

        RdyNode *current = rdyList;
        while (current != nullptr)
        {
            fprintf(fout, "|  %4hu | %10.1f |\n", current->process.pid, current->process.lifetime);
            current = current->next;
        }

        fprintf(fout, "+====================+\n");
    }

// ================================================================================== //

} // end of namespace group

