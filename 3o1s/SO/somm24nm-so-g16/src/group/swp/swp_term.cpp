/*
 *  \author Fábio Tavares 84898
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void swpTerm()
    {
        soProbe(602, "%s()\n", __func__);

        require(swappingPolicy == FIFO or swappingPolicy == FirstFit, "Module is not in a valid open state!");
        require(swpList != UNDEF_SWP_NODE and swpTail != UNDEF_SWP_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        // throw Exception(ENOSYS, __func__);

        SwpNode *current = swpList;
        while (current != nullptr)
        {
            SwpNode *next = current->next;
            delete current;
            current = next;
        }

        swappingPolicy = UndefSwappingPolicy;
        swpList = UNDEF_SWP_NODE;
        swpTail = UNDEF_SWP_NODE;
    }

// ================================================================================== //

} // end of namespace group

