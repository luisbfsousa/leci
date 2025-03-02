/*
 *  \author Luis Sousa 108583
 */

#include "somm24.h"

#include <stdint.h>

namespace group 
{

// ================================================================================== //

    void pctUpdateState(uint16_t pid, ProcessState state, double time = UNDEF_TIME, uint32_t address = UNDEF_ADDRESS)
    {
        bool validState = true;
        const char *sas = "UNKOWN";
        switch (state) {
            case NEW: sas = "NEW"; break;
            case RUNNING: sas = "RUNNING"; break;
            case READY: sas = "READY"; break;
            case SWAPPED: sas = "SWAPPED"; break;
            case TERMINATED: sas = "TERMINATED"; break;
            default: validState = false; break;
        }
        soProbe(308, "%s(%hu, %s, %.1f, %#x)\n", __func__, pid, sas, time, address);

        require(pctList != UNDEF_PCT_NODE, "Module is not in valid open state");
        require(pid != 0, "PID can't be zero");
        require(state != NEW, "on updating, state can not be NEW");
        require(validState, "Wrong state value");
        //throw Exception(ENOSYS, __func__);
        /* TODO POINT: Replace next instruction with your code */
        PctNode *current = pctList;
        while (current != nullptr) {
            if (current->pcb.pid == pid) {
                switch (state) {
                    case RUNNING:
                        require(time != UNDEF_TIME, "Invalid time for RUNNING state");
                        current->pcb.state = RUNNING;
                        current->pcb.startTime = time;
                        break;
                    case READY:
                        require(time != UNDEF_TIME, "Invalid time for READY state");
                        require(address != UNDEF_ADDRESS, "Invalid address for READY state");
                        current->pcb.state = READY;
                        current->pcb.storeTime = time;
                        current->pcb.memStart = address;
                        break;
                    case TERMINATED:
                        require(time != UNDEF_TIME, "Invalid time for TERMINATED state");
                        current->pcb.state = TERMINATED;
                        current->pcb.finishTime = time;
                        break;
                    case SWAPPED:
                        current->pcb.state = SWAPPED;
                        break;
                    default:
                        throw Exception(EINVAL, "Invalid state for update");
                }
                return;
            }
            current = current->next;
        }
        throw Exception(EINVAL, "Process with given PID not found");
    }

// ================================================================================== //

} // end of namespace group

