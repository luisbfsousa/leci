/*
 *  \author André Alexandre 114143
 */

#include "somm24.h"

namespace group
{

// ================================================================================== //

    uint16_t jdtLoad(FILE *fin, uint32_t maxSize)
    {
        soProbe(204, "%s(%p, %#x)\n", __func__, fin, maxSize);

        require(jdtIn != UNDEF_JOB_INDEX and jdtOut != UNDEF_JOB_INDEX, "Module is not in a valid open state!");
        require(jdtCount != UNDEF_JOB_COUNT, "Module is not in a valid open state!");
        require(fin != nullptr and fileno(fin) != -1, "fin must be a valid file stream");

        /* TODO POINT: Replace next instruction with your code */
        //throw Exception(ENOSYS, __func__);

        char line[256];  
        bool jobsSection = false;
        bool hasError = false;
        double previous_time = -1.0;
        uint32_t jobCount = 0;

        while (fgets(line, sizeof(line), fin) != nullptr) {
            char *start = line;

            while (*start == ' ' || *start == '\t') start++;

            char *newline = start;
            while (*newline) {
                if (*newline == '\n' || *newline == '\r') {
                    *newline = '\0';
                    break;
                }
                newline++;
            }

            const char *beginJobs = "Begin Jobs";
            const char *endJobs = "End Jobs";

            bool isBeginJobs = true;
            bool isEndJobs = true;

            for (int i = 0; beginJobs[i] != '\0'; i++) {
                if (beginJobs[i] != start[i]) {
                    isBeginJobs = false;
                    break;
                }
            }

            for (int i = 0; endJobs[i] != '\0'; i++) {
                if (endJobs[i] != start[i]) {
                    isEndJobs = false;
                    break;
                }
            }

            if (isBeginJobs) {
                jobsSection = true;
                continue;
            }

            if (isEndJobs) {
                jobsSection = false;
                break;
            }

            if (!jobsSection) continue;

            if (*start == '#' || *start == '\0') continue;

            char *comment = start;
            while (*comment) {
                if (*comment == '#') {
                    *comment = '\0';
                    break;
                }
                comment++;
            }

            char *end;
            double submission_time = strtod(start, &end);
            if (end == start) {
                fprintf(stderr, "Error: Invalid submission_time format in line: '%s'\n", start);
                hasError = true;
                continue;
            }

            while (*end == ' ' || *end == '\t') end++;

            if (*end != ';') {
                fprintf(stderr, "Error: Missing ';' after submission_time in line: '%s'\n", start);
                hasError = true;
                continue;
            }
            start = end + 1;

            while (*start == ' ' || *start == '\t') start++;

            double lftime = strtod(start, &end);
            if (end == start) {
                fprintf(stderr, "Error: Invalid lifetime format in line: '%s'\n", start);
                hasError = true;
                continue;
            }

            while (*end == ' ' || *end == '\t') end++;

            if (*end != ';') {
                fprintf(stderr, "Error: Missing ';' after lifetime in line: '%s'\n", start);
                hasError = true;
                continue;
            }
            start = end + 1;

            while (*start == ' ' || *start == '\t') start++;

            uint32_t memory_size = strtoul(start, &end, 0); 
            if (end == start) {
                fprintf(stderr, "Error: Invalid memory_size format in line: '%s'\n", start);
                hasError = true;
                continue;
            }

            if (submission_time < 0) {
                fprintf(stderr, "Error: Submission time cannot be negative in line: '%s'\n", line);
                hasError = true;
                continue;
            }
            if (submission_time <= previous_time) {
                fprintf(stderr, "Error: Submission times must be strictly ascending in line: '%s'\n", line);
                hasError = true;
                continue;
            }
            if (lftime <= 0) {
                fprintf(stderr, "Error: Lifetime must be positive in line: '%s'\n", line);
                hasError = true;
                continue;
            }
            if (memory_size == 0 || memory_size > maxSize) {
                fprintf(stderr, "Error: Memory size must be within range 1 to maxSize in line: '%s'\n", line);
                hasError = true;
                continue;
            }

            if (jobCount < maxSize) {
                jdtTable[jobCount].submissionTime = submission_time;
                jdtTable[jobCount].lifetime = lftime;
                jdtTable[jobCount].memSize = memory_size;
                jobCount++;
                previous_time = submission_time;
            } else {
                fprintf(stderr, "Error: Reached maximum job size (%u). Ignoring additional jobs.\n", maxSize);
                break;
            }
        }
        fclose(fin);
        if (hasError) {
            throw Exception(EINVAL, __func__);
        }
        jdtCount = jobCount;
        return jobCount;
    }

// ================================================================================== //

} // end of namespace group

