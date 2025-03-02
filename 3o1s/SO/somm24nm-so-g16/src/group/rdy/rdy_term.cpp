/*
 *  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void rdyTerm()
    {
        soProbe(502, "%s()\n", __func__);

        require(schedulingPolicy == FCFS or schedulingPolicy == SPN, "Module is not in a valid open state!");
        require(rdyList != UNDEF_RDY_NODE and rdyTail != UNDEF_RDY_NODE, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);
        while (rdyList != NULL) {
            RdyNode *temp = rdyList;
            rdyList = rdyList -> next;
            delete temp;
        }

        rdyList = UNDEF_RDY_NODE;
        rdyTail = UNDEF_RDY_NODE;
        schedulingPolicy = UndefSchedulingPolicy;
    }

// ================================================================================== //

} // end of namespace group

