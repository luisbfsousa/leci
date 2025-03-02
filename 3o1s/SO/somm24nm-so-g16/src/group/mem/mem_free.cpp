/*
 *  \author Fábio Tavares 84898
 */

#include "somm24.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void memFree(uint32_t address)
    {
        soProbe(405, "%s(%#x)\n", __func__, address);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);

        MemNode* node = memRetrieveNodeFromOccupiedList(address);
        if (node == nullptr)
        {
            throw Exception(EINVAL, __func__);
        }

        memAddNodeToFreeList(node);
    }

// ================================================================================== //

} // end of namespace group

