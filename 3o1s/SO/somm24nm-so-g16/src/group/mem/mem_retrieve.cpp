/*
 *  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    MemNode *memRetrieveNodeFromFreeList(uint32_t size, MemoryAllocationPolicy policy)
    {
        soProbe(409, "%s(%#x, %d)\n", __func__, size, policy);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");
        require(policy == BestFit or policy == WorstFit, "Allocation policy must be 'BestFit' or 'WorstFit'");

        /* TODO POINT: Replace next instruction with my code */
        /* throw Exception(ENOSYS, __func__);*/

        MemNode *bestFitNode = nullptr;
        MemNode *worstFitNode = nullptr;
        MemNode *prevBest = nullptr;
        MemNode *prevWorst = nullptr;
        MemNode *current = memFreeList;
        MemNode *prev = nullptr;

        while (current != nullptr)
        {
            if (current->block.size >= size)
            {
                if (policy == BestFit)
                {
                    if (bestFitNode == nullptr || current->block.size < bestFitNode->block.size)
                    {
                        bestFitNode = current;
                        prevBest = prev;
                    }
                }
                else if (policy == WorstFit)
                {
                    if (worstFitNode == nullptr || current->block.size > worstFitNode->block.size)
                    {
                        worstFitNode = current;
                        prevWorst = prev;
                    }
                }
            }

            prev = current;
            current = current->next;
        }

        if (policy == BestFit && bestFitNode == nullptr)
        {
            return nullptr;
        }
        if (policy == WorstFit && worstFitNode == nullptr)
        {
            return nullptr;
        }

        MemNode *selectedNode = (policy == BestFit) ? bestFitNode : worstFitNode;
        MemNode *prevSelected = (policy == BestFit) ? prevBest : prevWorst;

        if (selectedNode->block.size > size)
        {
            MemNode *remainingNode = new MemNode;
            remainingNode->block.start = selectedNode->block.start + size;
            remainingNode->block.size = selectedNode->block.size - size;
            remainingNode->next = selectedNode->next;
            selectedNode->block.size = size;

            if (prevSelected == nullptr)
            {
                memFreeList = remainingNode;
            }
            else
            {
                prevSelected->next = remainingNode;
            }
        }
        else
        {
            if (prevSelected == nullptr)
            {
                memFreeList = selectedNode->next;
            }
            else
            {
                prevSelected->next = selectedNode->next;
            }
        }

        selectedNode->next = nullptr;
        return selectedNode;
    }

// ================================================================================== //

    MemNode *memRetrieveNodeFromOccupiedList(uint32_t address)
    {
        soProbe(410, "%s(%#x)\n", __func__, address);

        require(memAllocationPolicy != UndefMemoryAllocationPolicy, "Module is not in a valid open state!");
        require(memFreeList != UNDEF_MEM_NODE and memOccupiedList != UNDEF_MEM_NODE, "Module is not in a valid open state!");

        MemNode *current = memOccupiedList;
        MemNode *prev = nullptr;

        while (current != nullptr)
        {
            if (current->block.start == address)
            {
                if (prev == nullptr)
                {
                    memOccupiedList = current->next; 
                }
                else
                {
                    prev->next = current->next;
                }

                current->next = nullptr; 
                return current;
            }

            prev = current;
            current = current->next;
        }

        throw Exception(EINVAL, __func__);
    }


// ================================================================================== //

} // end of namespace group

