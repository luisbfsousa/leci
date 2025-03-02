/*
 *  \author André Alexandre 114143
 */

#include "somm24.h"

namespace group 
{

// ================================================================================== //

    void memTerm() 
    {
        soProbe(402, "%s()\n", __func__);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        /*throw Exception(ENOSYS, __func__);*/
        
        MemNode *current = memFreeList;
        while (current != nullptr) 
        {
            MemNode *temp = current;
            current = current->next;
            delete temp;
        }

        current = memOccupiedList;
        while (current != nullptr) 
        {
            MemNode *temp = current;
            current = current->next;
            delete temp;
        }

        memFreeList = UNDEF_MEM_NODE;
        memOccupiedList = UNDEF_MEM_NODE;
        memAllocationPolicy = UndefMemoryAllocationPolicy;
    }

// ================================================================================== //

} // end of namespace group

