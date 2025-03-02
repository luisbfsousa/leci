/*
 *  \author André Alexandre 114143
 */

#include "somm24.h"

#include <stdio.h>
#include <stdint.h>
#include <exception.h>

namespace group 
{

// ================================================================================== //

    void jdtPrint(FILE *fout)
    {
        soProbe(203, "%s(%p)\n", __func__, fout);

        require(jdtIn != UNDEF_JOB_INDEX and jdtOut != UNDEF_JOB_INDEX, "Module is not in a valid open state!");
        require(jdtCount != UNDEF_JOB_COUNT, "Module is not in a valid open state!");
        require(fout != NULL and fileno(fout) != -1, "fout must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        fprintf(fout, "+=====================================+\n");
        fprintf(fout, "|          JDT module state           |\n");
        fprintf(fout, "+------------+------------+-----------+\n");
        fprintf(fout, "| submission |  lifetime  |  memory   |\n");
        fprintf(fout, "|    time    |            | requested |\n");
        fprintf(fout, "+------------+------------+-----------+\n");

        uint16_t index = jdtOut;
        for (uint16_t i = 0; i < jdtCount; ++i)
        {
            Job &job = jdtTable[index];

            char buffer[20]; 
            int subDigits = snprintf(buffer, sizeof(buffer), "%.1f", job.submissionTime);
            int lifeDigits = snprintf(buffer, sizeof(buffer), "%.1f", job.lifetime);
            int memDigits = snprintf(buffer, sizeof(buffer), "%x", job.memSize);

            int subSpaces = 10 - subDigits;
            int lifeSpaces = 10 - lifeDigits;
            int memSpaces = 6 - memDigits;

            fprintf(fout, "| %*s%.1f | %*s%.1f |  %*s0x%x |\n", subSpaces, "", job.submissionTime, lifeSpaces, "", job.lifetime, memSpaces, "", job.memSize);

            index = (index + 1) % MAX_JOBS;
        }

        fprintf(fout, "+=====================================+\n");
    }

// ================================================================================== //

} // end of namespace group

