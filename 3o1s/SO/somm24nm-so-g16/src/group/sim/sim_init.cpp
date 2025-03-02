/*
 *  \author Tomás Viana - 108445
 */

#include "somm24.h"

#include <stdio.h>
#include <sim.h>
#include <unistd.h>
#include <time.h>

namespace group
{

    // ================================================================================== //

    void simInit(FILE *fin)
    {
        soProbe(101, "%s(%p)\n", __func__, fin);

        require(simTime == UNDEF_TIME and stepCount == UNDEF_COUNT, "Module is not in a valid closed state!");
        require(submissionTime == UNDEF_TIME and runoutTime == UNDEF_TIME, "Module is not in a valid closed state!");
        require(runningProcess == UNDEF_PID, "Module is not in a valid closed state!");
        require(fin == nullptr or fileno(fin) != -1, "fin must be NULL or a valid file pointer");

        //TODO
        SimParameters simParams;
        simParams.pidStart = 1001;
        simParams.pidRandomSeed = UNDEF_SEED;
        simParams.memorySize = 0x100000; 
        simParams.memoryKernelSize = 0x10000; 
        simParams.memoryAllocPolicy = WorstFit;
        simParams.schedulingPolicy = FCFS;
        simParams.swappingPolicy = FIFO;
        simParams.jobMaxSize = 0x10000;
        simParams.jobCount = 0;
        simParams.jobRandomSeed = UNDEF_SEED;
        simParams.jobLoadStream = nullptr;

        if (fin != nullptr)
            simConfig(fin, &simParams);

        if (simParams.jobRandomSeed == UNDEF_SEED)
            simParams.jobRandomSeed = getpid();

        if (simParams.pidRandomSeed == UNDEF_SEED)
            simParams.pidRandomSeed = time(NULL);

        jdtInit();

        memInit(simParams.memorySize, simParams.memoryKernelSize, simParams.memoryAllocPolicy);
        rdyInit(simParams.schedulingPolicy);
        swpInit(simParams.swappingPolicy);
        
        uint16_t jobCount;
        if (simParams.jobLoadStream != nullptr) {
            jobCount = jdtLoad(simParams.jobLoadStream, simParams.jobMaxSize);
        } else {
            jobCount = jdtRandomFill(simParams.jobRandomSeed, simParams.jobCount, simParams.jobMaxSize);
        }
        simParams.jobCount = jobCount;

        pctInit(simParams.pidStart, simParams.jobCount, simParams.pidRandomSeed);

        stepCount = 0;
        simTime = 0.0;
        submissionTime = jdtNextSubmission();
        runoutTime = NEVER;
        runningProcess = 0;

        soProbe(101, "Simulation initialized with %hu jobs\n", jobCount);
    }

    // ================================================================================== //

} // end of namespace group