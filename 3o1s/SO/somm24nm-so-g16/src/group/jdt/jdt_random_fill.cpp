/*
  *  \author André Alexandre 114143
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    uint16_t jdtRandomFill(uint32_t seed, uint16_t cnt, uint32_t maxSize)
    {
        soProbe(205, "%s(%u, %u, %#x)\n", __func__, seed, cnt, maxSize);

        require(jdtIn != UNDEF_JOB_INDEX and jdtOut != UNDEF_JOB_INDEX, "Module is not in a valid open state!");
        require(jdtCount != UNDEF_JOB_COUNT, "Module is not in a valid open state!");
        require(cnt == 0 or (cnt >= 2 and cnt <= MAX_JOBS), "Number of jobs is invalid");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);
        
        srand(seed);

        if (cnt == 0) {   
            cnt = rand() % (MAX_JOBS - 1) + 2;   
        }
        
        double currentSubmissionTime = 0.0;

        for (uint16_t i = 0; i < cnt; i++) {
            Job newJob;
            double deltaTime = (rand() % 1001) * 0.1; 
            currentSubmissionTime += deltaTime;
            newJob.submissionTime = currentSubmissionTime;

            uint32_t steps_lt = 10000; 
            newJob.lifetime = 10.0 + (rand() % steps_lt) * 0.1; 

            newJob.memSize = (rand() % maxSize) + 1;

            jdtTable[jdtIn] = newJob;

            jdtIn = (jdtIn + 1) % MAX_JOBS;
        }

        jdtCount += cnt;       
        if (jdtCount == cnt) {     
            jdtOut = (jdtIn - cnt + MAX_JOBS) % MAX_JOBS;
        }
        
        return cnt;
    }

// ================================================================================== //

} // end of namespace group

