/*
 *  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

#include <stdint.h>
#include <math.h>

namespace group 
{

// ================================================================================== //

    void memInit(uint32_t memSize, uint32_t memKernelSize, MemoryAllocationPolicy policy)
    {
        const char *pas;
        switch (policy)
        {
            case UndefMemoryAllocationPolicy: pas = "UndefMemoryAllocationPolicy"; break;
            case BestFit: pas = "BestFit"; break;
            case WorstFit: pas = "WorstFit"; break;
            default: pas = "InvalidPattern"; break;
        }
        soProbe(401, "%s(%#x, %#x, %s)\n", __func__, memSize, memKernelSize, pas);

        require(memAllocationPolicy == UndefMemoryAllocationPolicy, "Module is not in a valid closed state!");
        require(memFreeList == UNDEF_MEM_NODE and memOccupiedList == UNDEF_MEM_NODE, "Module is not in a valid closed state!");
        require(memSize > memKernelSize, "total memory size must be bigger than the one use by the kernel of OS");
        require(policy == BestFit or policy == WorstFit, "policy must be BestFit or WorstFit");

        /* TODO POINT: Replace next instruction with my code */
        /*throw Exception(ENOSYS, __func__);*/
        
        memAllocationPolicy = policy;

        uint32_t availableMemory = memSize - memKernelSize;

        require(availableMemory > 0, "Available memory must be greater than zero after reserving kernel memory.");

        MemNode *firstBlock = new MemNode;
        if (firstBlock == nullptr) {
            throw Exception(ENOMEM, "Failed to allocate memory for the first free block.");
        }

        firstBlock->block.start = memKernelSize; 
        firstBlock->block.size = availableMemory;
        firstBlock->next = nullptr;

        memFreeList = firstBlock;
        memOccupiedList = nullptr;
    }

// ================================================================================== //

} // end of namespace group

