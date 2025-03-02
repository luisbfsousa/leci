/*
 *  \author Tiago José Costa Melo 113362
 *  \author André Alexandre 114143
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void memPrint(FILE *fout)
    {
        soProbe(403, "%s(\"%p\")\n", __func__, fout);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");
        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with my code */
        /*throw Exception(ENOSYS, __func__);*/

        fprintf(fout, "+===============================+\n");
        fprintf(fout, "|       MEM module state        |\n");
        if (memAllocationPolicy == BestFit) {
            fprintf(fout, "|           (BestFit)           |\n");
        } else {
            fprintf(fout, "|          (WorstFit)           |\n");
        }
        fprintf(fout, "+-------------------------------+\n");
        fprintf(fout, "|         occupied list         |\n");
        fprintf(fout, "+---------------+---------------+\n");
        fprintf(fout, "|  start frame  |     size      |\n");
        fprintf(fout, "+---------------+---------------+\n");

        MemNode *current = memOccupiedList;
        while (current != nullptr) 
        {
            char buffer[20]; 
            int startDigits = snprintf(buffer, sizeof(buffer), "%lx", (unsigned long)current->block.start);
            int sizeDigits = snprintf(buffer, sizeof(buffer), "%lx", (unsigned long)current->block.size);

            int startSpaces = 10 - startDigits; 
            int sizeSpaces = 10 - sizeDigits;

            fprintf(fout, "|  %*s0x%lx |  %*s0x%lx |\n", startSpaces, "", (unsigned long)current->block.start, sizeSpaces, "", (unsigned long)current->block.size);
            current = current->next;
        }

        fprintf(fout, "+---------------+---------------+\n");
        fprintf(fout, "|            free list          |\n");
        fprintf(fout, "+---------------+---------------+\n");
        fprintf(fout, "|  start frame  |     size      |\n");
        fprintf(fout, "+---------------+---------------+\n");

        current = memFreeList;
        while (current != nullptr) 
        {
            char buffer[20]; 
            int startDigits = snprintf(buffer, sizeof(buffer), "%lx", (unsigned long)current->block.start);
            int sizeDigits = snprintf(buffer, sizeof(buffer), "%lx", (unsigned long)current->block.size);

            int startSpaces = 10 - startDigits;
            int sizeSpaces = 10 - sizeDigits; 

            fprintf(fout, "|  %*s0x%lx |  %*s0x%lx |\n", startSpaces, "", (unsigned long)current->block.start, sizeSpaces, "", (unsigned long)current->block.size);
            current = current->next;
        }

        fprintf(fout, "+===============================+\n");
    }

// ================================================================================== //

} // end of namespace group

