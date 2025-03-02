/*
 *  \author Tomás Viana - 108445
 *  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void simRun(uint32_t cnt)
    {
        soProbe(106, "%s(%u)\n", __func__, cnt);

        require(simTime != UNDEF_TIME and stepCount != UNDEF_COUNT, "Module not in a valid open state!");
        require(submissionTime != UNDEF_TIME and runoutTime != UNDEF_TIME, "Module is not in a valid open state!");
        require(runningProcess != UNDEF_PID, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        
        uint32_t steps = 0;
        while (steps < cnt || cnt == 0)
        {
            if (simStep() == false)
                break;
            steps++;
        }
    }

// ================================================================================== //

} // end of namespace group

