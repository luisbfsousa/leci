/*
 *  \author Artur Pereira (artur at ua dot pt)
 */

#include "pct.h"
#include "tam.h"
#include "binselection.h"

#include <stdio.h>
#include <stdint.h>

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */
PctNode *pctList = UNDEF_PCT_NODE;  // Pointer to head of list 

uint16_t pctPID[MAX_JOBS];          // List of PIDs to the assigned to new processes  

// ================================================================================== //

namespace binaries {
    void pctInit(uint16_t pid0, uint16_t cnt, uint32_t seed);
    void pctTerm();
    void pctPrint(FILE *fout);
    uint16_t pctNewProcess(double admissionTime, double lifetime, uint32_t memSize);
    double pctLifetime(uint16_t pid);
    uint32_t pctMemSize(uint16_t pid);
    uint32_t pctMemAddress(uint16_t pid);
    void pctUpdateState(uint16_t pid, ProcessState state, double time, uint32_t);
}

namespace group {
    void pctInit(uint16_t pid0, uint16_t cnt, uint32_t seed);
    void pctTerm();
    void pctPrint(FILE *fout);
    uint16_t pctNewProcess(double admissionTime, double lifetime, uint32_t memSize);
    double pctLifetime(uint16_t pid);
    uint32_t pctMemSize(uint16_t pid);
    uint32_t pctMemAddress(uint16_t pid);
    void pctUpdateState(uint16_t pid, ProcessState state, double time, uint32_t add);
}

// ================================================================================== //

void pctInit(uint16_t pid0, uint16_t cnt, uint32_t seed)
{
    if (soBinSelected(301))
        binaries::pctInit(pid0, cnt, seed);
    else
        group::pctInit(pid0, cnt, seed);
}

// ================================================================================== //

void pctTerm()
{
    if (soBinSelected(302))
        binaries::pctTerm();
    else
        group::pctTerm();
}

// ================================================================================== //

void pctPrint(FILE *fout)
{
    if (soBinSelected(303))
        binaries::pctPrint(fout);
    else
        group::pctPrint(fout);
}

// ================================================================================== //

uint16_t pctNewProcess(double admissionTime, double lifetime, uint32_t memSize)
{
    if (soBinSelected(304))
        return binaries::pctNewProcess(admissionTime, lifetime, memSize);
    else
        return group::pctNewProcess(admissionTime, lifetime, memSize);
}

// ================================================================================== //

double pctLifetime(uint16_t pid)
{
    if (soBinSelected(305))
        return binaries::pctLifetime(pid);
    else
        return group::pctLifetime(pid);
}

// ================================================================================== //

uint32_t pctMemSize(uint16_t pid)
{
    if (soBinSelected(306))
        return binaries::pctMemSize(pid);
    else
        return group::pctMemSize(pid);
}

// ================================================================================== //

uint32_t pctMemAddress(uint16_t pid)
{
    if (soBinSelected(307))
        return binaries::pctMemAddress(pid);
    else
        return group::pctMemAddress(pid);
}

// ================================================================================== //

void pctUpdateState(uint16_t pid, ProcessState state, double time, uint32_t add)
{
    if (soBinSelected(308))
        binaries::pctUpdateState(pid, state, time, add);
    else
        group::pctUpdateState(pid, state, time, add);
}

// ================================================================================== //

