/*
 *  \author Fábio Tavares 84898
 */

#include "somm24.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void memAddNodeToFreeList(MemNode *p)
    {
        soProbe(407, "%s(%p)\n", __func__, p);

        // Ensure the memory module is in a valid state
        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE && memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");
        require(p != nullptr, "p must be a valid pointer");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);

        MemNode *current = memFreeList;
        MemNode *prev = nullptr;

        while(current != nullptr && current->block.start < p->block.start) {
            prev = current;
            current = current->next;
        }

        p->next = current;
        if(prev != nullptr) {
            prev->next = p;
        } else {
            memFreeList = p;
        }

        if(current != nullptr && p->block.start + p->block.size == current->block.start) {
            p->block.size += current->block.size;
            p->next = current->next;
        }

        if(prev != nullptr && prev->block.start + prev->block.size == p->block.start) {
            prev->block.size += p->block.size;
            prev->next = p->next;
        }

    }

// ================================================================================== //

    void memAddNodeToOccupiedList(MemNode *p)
    {
        soProbe(408, "%s(%p)\n", __func__, p);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");
        require(p != nullptr, "p must be a valid pointer");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);

        MemNode *current = memOccupiedList;
        MemNode *prev = nullptr;

        while(current != nullptr && current->block.start < p->block.start) {
            prev = current;
            current = current->next;
        }

        p->next = current;
        if(prev != nullptr) {
            prev->next = p;
        } else {
            memOccupiedList = p;
        }
    }

// ================================================================================== //

}// end of namespace group