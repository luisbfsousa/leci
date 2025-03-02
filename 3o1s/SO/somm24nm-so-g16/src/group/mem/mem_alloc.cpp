/*
  *  \author Fábio Tavares 84898
  *  \author Luis Sousa 108583
 */

#include "somm24.h"

#include <stdint.h>
#include <string.h>

namespace group 
{

// ================================================================================== //

    uint32_t memBiggestFreeBlockSize()
    {
        soProbe(406, "%s()\n", __func__);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);

        uint32_t biggestBlockSize = 0;

        MemNode *current = memFreeList;
        while (current != nullptr) {
            if (current->block.size > biggestBlockSize) {
                biggestBlockSize = current->block.size;
            }
            current = current->next;
        }

        return biggestBlockSize;
    }

// ================================================================================== //

    uint32_t memAlloc(uint32_t size)
    {
        soProbe(404, "%s(%#x)\n", __func__, size);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);

        
        //printf("Requested size: %u\n", size);
        //printf("Memory Free List:\n");
        MemNode* currentNode = memFreeList;
        while (currentNode != nullptr)
        {
            //printf("Block start: %u, Block size: %u\n", currentNode->block.start, currentNode->block.size);
            currentNode = currentNode->next;
        }

        MemNode* allocatedNode = memRetrieveNodeFromFreeList(size, memAllocationPolicy);

        if (allocatedNode == nullptr)
        {
            //printf("Failed to allocate memory for size: %u\n", size);
            throw Exception(ENOBUFS, __func__);
        }

        memAddNodeToOccupiedList(allocatedNode);

        return allocatedNode->block.start;
    }

// ================================================================================== //

} // end of namespace group

