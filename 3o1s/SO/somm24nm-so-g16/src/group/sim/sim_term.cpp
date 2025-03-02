/*
 *  \author Tomás Viana - 108445
*  \author Tiago José Costa Melo 113362
 */

#include "somm24.h"

namespace group 
{

// ================================================================================== //

    void simTerm() 
    {
        soProbe(102, "%s()\n", __func__);

        require(simTime != UNDEF_TIME and stepCount != UNDEF_COUNT, "Module not in a valid open state!");
        require(submissionTime != UNDEF_TIME and runoutTime != UNDEF_TIME, "Module is not in a valid open state!");
        require(runningProcess != UNDEF_PID, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        
        jdtTerm();
        pctTerm();
        memTerm();
        rdyTerm();
        swpTerm();

        stepCount = 0;
        simTime = 0;
        submissionTime = 0;
        runoutTime = 0;
        runningProcess = 0;
    }

// ================================================================================== //

} // end of namespace group

