/*
 *  \author Tomás Viana - 108445
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void simPrint(FILE *fout, uint32_t satelliteModules)
    {
        soProbe(103, "%s(\"%p\")\n", __func__, fout);

        require(simTime != UNDEF_TIME and stepCount != UNDEF_COUNT, "Module not in a valid open state!");
        require(submissionTime != UNDEF_TIME and runoutTime != UNDEF_TIME, "Module is not in a valid open state!");
        require(runningProcess != UNDEF_PID, "Module is not in a valid open state!");
        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        char runningProcessStr[16];
        char submissionTimeStr[16];
        char runoutTimeStr[16];
        
        if (satelliteModules & (1 << 0)) {
            jdtPrint(fout);
            fprintf(fout, "\n");
        }

        if (satelliteModules & (1 << 1)) {
            pctPrint(fout);
            fprintf(fout, "\n");
        }

        if (satelliteModules & (1 << 2)) {
            memPrint(fout);
            fprintf(fout, "\n");
        }

        if (satelliteModules & (1 << 3)) {
            rdyPrint(fout);
            fprintf(fout, "\n");
        }

        if (satelliteModules & (1 << 4)) {
            swpPrint(fout);
            fprintf(fout, "\n");
        }

        if (runningProcess == UNDEF_PID) {
            snprintf(runningProcessStr, sizeof(runningProcessStr), "---");
        } else {
            snprintf(runningProcessStr, sizeof(runningProcessStr), "%hu", runningProcess);
        }

        if (submissionTime == NEVER) {
            snprintf(submissionTimeStr, sizeof(submissionTimeStr), "NEVER");
        } else {
            snprintf(submissionTimeStr, sizeof(submissionTimeStr), "%.1f", submissionTime);
        }

        if (runoutTime == NEVER) {
            snprintf(runoutTimeStr, sizeof(runoutTimeStr), "NEVER");
        } else {
            snprintf(runoutTimeStr, sizeof(runoutTimeStr), "%.1f", runoutTime);
        }

        fprintf(fout, "+====================================================================================+\n" );
        fprintf(fout, "+ -------------------------------- SIM Module State -------------------------------- +\n" );
        fprintf(fout, "+====================================================================================+\n" );
        fprintf(fout, "| simulation time |  step count  | running process | next submission |  next runout  |\n" );
        fprintf(fout, "+-----------------+--------------+-----------------+-----------------+---------------+\n" );
        fprintf(fout, "| %15.1f | %12u | %15s | %15s | %13s |\n",simTime,stepCount,runningProcessStr,submissionTimeStr,runoutTimeStr);
        fprintf(fout, "+====================================================================================+\n" );
    }

// ================================================================================== //

} // end of namespace group

