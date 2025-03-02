/*
 *  \author André Alexandre 114143
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    void jdtInit()
    {
        soProbe(201, "%s()\n", __func__);

        require(jdtIn == UNDEF_JOB_INDEX and jdtOut == UNDEF_JOB_INDEX, "Module is not in a valid closed state!");
        require(jdtCount == UNDEF_JOB_COUNT, "Module is not in a valid closed state!");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        jdtIn = 0;
        jdtOut = 0;
        jdtCount = 0;

        for (uint16_t i = 0; i < MAX_JOBS; i++) {
            jdtTable[i].submissionTime = 0;
            jdtTable[i].lifetime = 0;
            jdtTable[i].memSize = 0;
        }
    }

// ================================================================================== //

} // end of namespace group

