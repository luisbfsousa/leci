/*
 *  \author Fábio Tavares 84898
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    uint16_t swpFetch(uint32_t sizeAvailable)
    {
        soProbe(605, "%s(%#x)\n", __func__, sizeAvailable);

        require(swappingPolicy == FIFO or swappingPolicy == FirstFit, "Module is not in a valid open state!");
        require(swpList != UNDEF_SWP_NODE and swpTail != UNDEF_SWP_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);

        if (swpList == nullptr)
        {
            return 0;
        }

        if (swappingPolicy == FIFO)
        {
            SwpNode *nodeToRemove = swpList;

            if (nodeToRemove != nullptr && nodeToRemove->process.size <= sizeAvailable)
            {
                uint16_t pid = nodeToRemove->process.pid;
                swpList = nodeToRemove->next;

                if (swpList == nullptr)
                {
                    swpTail = nullptr;
                }

                delete nodeToRemove;
                return pid;
            }
        }
        else if (swappingPolicy == FirstFit)
        {
            SwpNode *current = swpList;
            SwpNode *previous = nullptr;

            while (current != nullptr)
            {
                if (current->process.size <= sizeAvailable)
                {
                    uint16_t pid = current->process.pid;

                    if (previous == nullptr)
                    {
                        swpList = current->next;
                    }
                    else
                    {
                        previous->next = current->next;
                    }

                    if (current == swpTail)
                    {
                        swpTail = previous;
                    }

                    delete current;
                    return pid;
                }

                previous = current;
                current = current->next;
            }
        }

        return 0;
    }

// ================================================================================== //

} // end of namespace group

