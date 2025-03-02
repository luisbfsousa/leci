/*
 *  \author Artur Pereira (artur at ua dot pt)
 */

#include "rdy.h"
#include "tam.h"
#include "binselection.h"

#include <stdio.h>
#include <stdint.h>

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */

SchedulingPolicy schedulingPolicy = UndefSchedulingPolicy;   // Scheduling policy in use

RdyNode *rdyList = UNDEF_RDY_NODE;    // Pointer to head of list
RdyNode *rdyTail = UNDEF_RDY_NODE;    // Pointer to tail of list

// ================================================================================== //

namespace binaries {
    void rdyInit(SchedulingPolicy policy);
    void rdyTerm();
    void rdyPrint(FILE *fout);
    void rdyInsert(uint16_t pid, double lifetime);
    uint16_t rdyFetch();
}

namespace group {
    void rdyInit(SchedulingPolicy policy);
    void rdyTerm();
    void rdyPrint(FILE *fout);
    void rdyInsert(uint16_t pid, double lifetime);
    uint16_t rdyFetch();
}

// ================================================================================== //

void rdyInit(SchedulingPolicy policy)
{
    if (soBinSelected(501))
        binaries::rdyInit(policy);
    else
        group::rdyInit(policy);
}

// ================================================================================== //

void rdyTerm()
{
    if (soBinSelected(502))
        binaries::rdyTerm();
    else
        group::rdyTerm();
}

// ================================================================================== //

void rdyPrint(FILE *fout)
{
    if (soBinSelected(503))
        binaries::rdyPrint(fout);
    else
        group::rdyPrint(fout);
}

// ================================================================================== //

void rdyInsert(uint16_t pid, double lifetime)
{
    if (soBinSelected(504))
        binaries::rdyInsert(pid, lifetime);
    else
        group::rdyInsert(pid, lifetime);
}

// ================================================================================== //

uint16_t rdyFetch()
{
    if (soBinSelected(505))
        return binaries::rdyFetch();
    else
        return group::rdyFetch();
}

// ================================================================================== //

