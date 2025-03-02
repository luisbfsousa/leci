/*
 *  \author Fábio Tavares 84898
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void swpPrint(FILE *fout)
    {
        soProbe(603, "%s(%p)\n", __func__, fout);

        require(swappingPolicy == FIFO or swappingPolicy == FirstFit, "Module is not in a valid open state!");
        require(swpList != UNDEF_SWP_NODE and swpTail != UNDEF_SWP_NODE, "Module is not in a valid open state!");
        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);

        fprintf(fout, "+=====================+\n");
        fprintf(fout, "|  SWP Module State   |\n");
        fprintf(fout, "|       (FIFO)        |\n");
        fprintf(fout, "+-------+-------------+\n");
        fprintf(fout, "|  PID  | memory size |\n");
        fprintf(fout, "+-------+-------------+\n");

        SwpNode *current = swpList;
        while (current != nullptr)
        {
            fprintf(fout, "|  %4hu | %11u |\n", current->process.pid, current->process.size);
            current = current->next;
        }

        fprintf(fout, "+=====================+\n");
    }

// ================================================================================== //

} // end of namespace group

