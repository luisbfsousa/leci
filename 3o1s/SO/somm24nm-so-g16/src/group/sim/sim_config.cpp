/*
    \author Tomás Viana - 108445
 */

#include "somm24.h"
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

namespace group
{
    void simConfig(FILE *fin, SimParameters *spp)
    {
        soProbe(104, "%s(\"%p\")\n", __func__, fin);

        // Initial validity checks for module state
        require(simTime == UNDEF_TIME && stepCount == UNDEF_COUNT, "Module is not in a valid closed state!");
        require(submissionTime == UNDEF_TIME && runoutTime == UNDEF_TIME, "Module is not in a valid closed state!");
        require(runningProcess == UNDEF_PID, "Module is not in a valid closed state!");
        require(fin != NULL && fileno(fin) != -1, "fin must be a valid file stream");
        require(spp != NULL, "spp must be a valid pointer");
        
        //TODO
        uint32_t parsedU32 = 0;
        uint16_t parsedU16 = 0;
        char buffer[1024];
        bool insideJobsSection = false;

        fseek(fin, 0, SEEK_SET);

        while (fgets(buffer, sizeof(buffer), fin) != NULL)
        {
            char* line = buffer;
            while (*line != '\0' && isspace((unsigned char)*line)) {
                line++;
            }

            if (*line == '\0' || *line == '#' || *line == '\n') {
                continue;
            }

            if (strncasecmp(line, "Begin Jobs", 10) == 0) {
                insideJobsSection = true;
                continue;
            }

            if (strncasecmp(line, "End Jobs", 8) == 0 && insideJobsSection) {
                insideJobsSection = false;
                spp->jobLoadStream = fin;
                continue;
            }

            char* equalSign = strchr(line, '=');
            if (!equalSign) {
                continue;
            }

            *equalSign = '\0';
            char* key = line;
            char* value = equalSign + 1;

            while (*key != '\0' && isspace((unsigned char)*key)) { key++; }
            char* endKey = key + strlen(key) - 1;
            while (endKey > key && isspace((unsigned char)*endKey)) {
                *endKey-- = '\0';
            }

            while (*value != '\0' && isspace((unsigned char)*value)) { value++; }
            char* endVal = value + strlen(value) - 1;
            while (endVal > value && isspace((unsigned char)*endVal)) {
                *endVal-- = '\0';
            }

            if (strcasecmp(key, "JobMaxSize") == 0)
            {
                if (sscanf(value, "%x", &parsedU32) == 1 || sscanf(value, "%u", &parsedU32) == 1) {
                    spp->jobMaxSize = parsedU32;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid JobMaxSize value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "JobRandomSeed") == 0)
            {
                if (sscanf(value, "%x", &parsedU32) == 1 || sscanf(value, "%u", &parsedU32) == 1) {
                    spp->jobRandomSeed = parsedU32;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid JobRandomSeed value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "JobCount") == 0)
            {
                if (sscanf(value, "%hx", &parsedU16) == 1 || sscanf(value, "%hu", &parsedU16) == 1) {
                    spp->jobCount = parsedU16;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid JobCount value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "PIDStart") == 0)
            {
                if (sscanf(value, "%hu", &parsedU16) == 1) {
                    spp->pidStart = parsedU16;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid PIDStart value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "PIDRandomSeed") == 0)
            {
                if (sscanf(value, "%u", &parsedU32) == 1) {
                    spp->pidRandomSeed = parsedU32;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid PIDRandomSeed value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "MemorySize") == 0)
            {
                if (sscanf(value, "%x", &parsedU32) == 1 || sscanf(value, "%u", &parsedU32) == 1) {
                    spp->memorySize = parsedU32;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid MemorySize value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "MemoryKernelSize") == 0)
            {
                if (sscanf(value, "%x", &parsedU32) == 1 || sscanf(value, "%u", &parsedU32) == 1) {
                    spp->memoryKernelSize = parsedU32;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid MemoryKernelSize value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "MemoryAllocationPolicy") == 0)
            {
                if (strcasecmp(value, "BestFit") == 0) {
                    spp->memoryAllocPolicy = BestFit;
                } else if (strcasecmp(value, "WorstFit") == 0) {
                    spp->memoryAllocPolicy = WorstFit;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid MemoryAllocationPolicy value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "SchedulingPolicy") == 0)
            {
                if (strcasecmp(value, "FCFS") == 0) {
                    spp->schedulingPolicy = FCFS;
                } else if (strcasecmp(value, "SPN") == 0) {
                    spp->schedulingPolicy = SPN;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid SchedulingPolicy value: %s\n", value);
                }
            }
            else if (strcasecmp(key, "SwappingPolicy") == 0)
            {
                if (strcasecmp(value, "FIFO") == 0) {
                    spp->swappingPolicy = FIFO;
                } else if (strcasecmp(value, "FirstFit") == 0) {
                    spp->swappingPolicy = FirstFit;
                } else {
                    fprintf(stderr, "SIM_CONFIG: Invalid SwappingPolicy value: %s\n", value);
                }
            }
        }

        if (ferror(fin)) {
            throw Exception(EINVAL, __func__);
        }
        
        fseek(fin, 0, SEEK_SET);

    }

} // end of namespace group
