/*
 *  \author André Alexandre 114143
 */

#include "somm24.h"

namespace group 
{

// ================================================================================== //

    void jdtTerm() 
    {
        soProbe(202, "%s()\n", __func__);

        require(jdtIn != UNDEF_JOB_INDEX and jdtOut != UNDEF_JOB_INDEX, "Module is not in a valid open state!");
        require(jdtCount != UNDEF_JOB_COUNT, "Module is not in a valid open state!");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        jdtIn = UNDEF_JOB_INDEX;
        jdtOut = UNDEF_JOB_INDEX;
        jdtCount = UNDEF_JOB_COUNT;

        for (uint16_t i = 0; i < MAX_JOBS; i++) {
            jdtTable[i].submissionTime = UNDEF_TIME;
            jdtTable[i].lifetime = UNDEF_TIME;
            jdtTable[i].memSize = UNDEF_ADDRESS;
        }
    }

// ================================================================================== //

} // end of namespace group

