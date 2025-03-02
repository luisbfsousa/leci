/*
 *  \author Artur Pereira (artur at ua dot pt)
 */

#include "sim.h"
#include "tam.h"
#include "binselection.h"

#include <stdio.h>
#include <stdint.h>

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */
uint32_t stepCount = UNDEF_COUNT;     // The number of simulation steps already executed
double simTime = UNDEF_TIME;          // The current simulation time
double submissionTime = UNDEF_TIME;   // Time at which the next job will be submitted to the system
double runoutTime = UNDEF_TIME;       // Time at which the current running process will end its execution
uint16_t runningProcess = UNDEF_PID;  // PID of the process owning the processor, being 0 if none

// ================================================================================== //
// ================================================================================== //

namespace binaries {
    void simInit(FILE *fin);
    void simConfig(FILE *fin, SimParameters *spp);
    void simTerm();
    void simPrint(FILE *fout, uint32_t satelliteModules);
    bool simStep();
    void simRun(uint32_t cnt);
}

namespace group {
    void simInit(FILE *fin);
    void simConfig(FILE *fin, SimParameters *spp);
    void simTerm();
    void simPrint(FILE *fout, uint32_t satelliteModules);
    bool simStep();
    void simRun(uint32_t cnt);
}

// ================================================================================== //

void simInit(FILE *fin)
{
    if (soBinSelected(101))
        binaries::simInit(fin);
    else
        group::simInit(fin);
}

// ================================================================================== //

void simTerm()
{
    if (soBinSelected(102))
        binaries::simTerm();
    else
        group::simTerm();
}

// ================================================================================== //

void simPrint(FILE *fout, uint32_t satelliteModules)
{
    if (soBinSelected(103))
        binaries::simPrint(fout, satelliteModules);
    else
        group::simPrint(fout, satelliteModules);
}

// ================================================================================== //

void simConfig(FILE *fin, SimParameters *spp)
{
    if (soBinSelected(104))
        binaries::simConfig(fin, spp);
    else
        group::simConfig(fin, spp);
}

// ================================================================================== //

bool simStep()
{
    if (soBinSelected(105))
        return binaries::simStep();
    else
        return group::simStep();
}

// ================================================================================== //

void simRun(uint32_t cnt)
{
    if (soBinSelected(106))
        binaries::simRun(cnt);
    else
        group::simRun(cnt);
}

// ================================================================================== //

