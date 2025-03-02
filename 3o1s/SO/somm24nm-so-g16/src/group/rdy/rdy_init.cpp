/*
 *  \author Tiago Jose Costa Melo 113362
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void rdyInit(SchedulingPolicy policy)
    {
        const char *pas = "Unknown policy";
        switch (policy) {
            case UndefSchedulingPolicy: pas = "UndefSchedulingPolicy"; break;
            case FCFS: pas = "FCFS"; break;
            case SPN: pas = "SPN"; break;
        }
        soProbe(501, "%s(%s)\n", __func__, pas);

        require(schedulingPolicy == UndefSchedulingPolicy, "Module is not in a valid closed state!");
        require(rdyList == UNDEF_RDY_NODE and rdyTail == UNDEF_RDY_NODE, "Module is not in a valid closed state!");
        require(policy == FCFS or policy == SPN, "Given policy is not valid");

        /* TODO POINT: Replace next instruction with my code */
        //throw Exception(ENOSYS, __func__);
        schedulingPolicy = policy;
        rdyList = nullptr;
        rdyTail = nullptr;
    }

// ================================================================================== //

} // end of namespace group

