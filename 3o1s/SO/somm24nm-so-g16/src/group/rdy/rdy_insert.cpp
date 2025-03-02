/*
 *  \author Tiago Jose Costa Melo 113362
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void rdyInsert(uint16_t pid, double lifetime)
    {
        soProbe(504, "%s(%hu, %.1f)\n", __func__, pid, lifetime);

        require(schedulingPolicy == FCFS or schedulingPolicy == SPN, "Module is not in a valid open state!");
        require(rdyList != UNDEF_RDY_NODE and rdyTail != UNDEF_RDY_NODE, "Module is not in a valid open state!");
        require(pid != 0, "a valid process ID must be greater than zero");
        require(lifetime > 0, "a valid process lifetime must be greater than zero");

        /* TODO POINT: Replace next instruction with my code */

        RdyProcessData *newProcess = new RdyProcessData();
        if (newProcess == nullptr)
        {
            throw Exception(ENOMSG, __func__);
        }
        newProcess->pid = pid;
        newProcess->lifetime = lifetime;

        RdyNode *newNode = new RdyNode();
        if (newNode == nullptr)
        {
            delete newProcess;
            throw Exception(ENOMSG, __func__);
        }

        newNode->process = *newProcess;
        newNode->next = nullptr;

        if (schedulingPolicy == FCFS)
        {
            if (rdyList == nullptr)
            {
                rdyList = newNode;
                rdyTail = newNode;
            }
            else
            {
                rdyTail->next = newNode;
                rdyTail = newNode;
            }
        }
        else if (schedulingPolicy == SPN)
    {
        if (rdyList == nullptr || rdyList->process.lifetime >= lifetime) 
        {
            newNode->next = rdyList;
            rdyList = newNode;
            if (rdyTail == nullptr)
            {
                rdyTail = newNode;
            }
        }
        else
        {
            RdyNode *current = rdyList;
            RdyNode *previous = nullptr;

            while (current != nullptr && current->process.lifetime < lifetime)
            {
                previous = current;
                current = current->next;
            }

            if (previous == nullptr)
            {
                newNode->next = rdyList;
                rdyList = newNode;
            }
            else
            {
                newNode->next = current;
                previous->next = newNode;
            }
        }
    }
        

    }

// ================================================================================== //

} // end of namespace group

