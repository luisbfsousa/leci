/*
 *  \author Tomás Viana - 108445
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //
	uint16_t swappedProcessesPID[MAX_JOBS];

    bool simStep()
    {
        soProbe(105, "%s()\n", __func__);

        require(simTime != UNDEF_TIME and stepCount != UNDEF_COUNT, "Module not in a valid open state!");
        require(submissionTime != UNDEF_TIME and runoutTime != UNDEF_TIME, "Module is not in a valid open state!");
        require(runningProcess != UNDEF_PID, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        if (simTime != 0.0 && runningProcess == 0 && runoutTime == NEVER) 
        {
            return false;
        }

        double nextSubmission = jdtNextSubmission();
        if ((nextSubmission != NEVER || simTime == 0.0) && runoutTime > nextSubmission)
        {
            simTime = nextSubmission;

            Job newJob = jdtFetchNext();

            uint16_t newJobPID = pctNewProcess(newJob.submissionTime,newJob.lifetime,newJob.memSize);

            try
            {
                uint32_t address = memAlloc(newJob.memSize);
                if (address != UNDEF_ADDRESS)
                {
                    pctUpdateState(newJobPID, ProcessState::READY, simTime, address);

                    if (runningProcess == 0)
                    {
                        pctUpdateState(newJobPID, ProcessState::RUNNING, simTime, address);
                        runoutTime    = simTime + pctLifetime(newJobPID);
                        runningProcess = newJobPID;
                    }
                    else
                    {
                        rdyInsert(newJobPID, newJob.lifetime);
                    }
                }
                else
                {
                    pctUpdateState(newJobPID, ProcessState::SWAPPED, simTime);
                    swpInsert(newJobPID, newJob.memSize);

                    for (uint8_t i = 0; i < MAX_JOBS; i++)
                    {
                        if (swappedProcessesPID[i] == 0)
                        {
                            swappedProcessesPID[i] = newJobPID;
                            break;
                        }
                    }
                }
            }
            catch (const Exception &e)
            {
                pctUpdateState(newJobPID, ProcessState::SWAPPED, simTime);
                swpInsert(newJobPID, newJob.memSize);

                for (uint8_t i = 0; i < MAX_JOBS; i++)
                {
                    if (swappedProcessesPID[i] == 0)
                    {
                        swappedProcessesPID[i] = newJobPID;
                        break;
                    }
                }
            }

            submissionTime = jdtNextSubmission();

            stepCount++;
            return true;
        }
        else if (nextSubmission == NEVER)
        {
            submissionTime = NEVER;
        }

        {
            simTime = runoutTime;

            pctUpdateState(runningProcess, ProcessState::TERMINATED, simTime);

            memFree(pctMemAddress(runningProcess));

            runningProcess = 0;

            for (uint8_t i = 0; i < MAX_JOBS; i++)
            {
                if (swappedProcessesPID[i] != 0)
                {
                    uint16_t candidatePID = swpFetch(pctMemSize(swappedProcessesPID[i]));
                    if (candidatePID != 0)
                    {
                        uint32_t candidateAddr = memAlloc(pctMemSize(candidatePID));
                        if (candidateAddr != UNDEF_ADDRESS)
                        {
                            pctUpdateState(candidatePID, ProcessState::READY, simTime, candidateAddr);
                            rdyInsert(candidatePID, pctLifetime(candidatePID));
                            swappedProcessesPID[i] = 0;
                        }
                        else
                        {
                            swpInsert(candidatePID, pctLifetime(candidatePID));
                        }
                    }
                }
            }

            uint16_t nextReady = rdyFetch();
            if (nextReady != 0)
            {
                pctUpdateState(nextReady, ProcessState::RUNNING, simTime);
                submissionTime = jdtNextSubmission();
                runoutTime = simTime + pctLifetime(nextReady);
                runningProcess = nextReady;
            }
            else
            {
                runningProcess = 0;
                runoutTime = NEVER;
            }

            stepCount++;
            return true;
        }

        return false;
    }

// ================================================================================== //

} // end of namespace group