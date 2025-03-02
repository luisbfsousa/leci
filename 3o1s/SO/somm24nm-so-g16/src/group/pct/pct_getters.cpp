/*
 *  \author Luis Sousa 108583
 */

#include "somm24.h"

#include <stdint.h>

namespace group
{
    /* ======================================================================== */

    double pctLifetime(uint16_t pid)
    {
        soProbe(305, "%s(%u)\n", __func__, pid);

        require(pctList != UNDEF_PCT_NODE, "The PCT linked list must exist");
        require(pid > 0, "a valid process ID must be greater than zero");
        //throw Exception(ENOSYS, __func__);
        /* replace with your code */
        
        PctNode *current = pctList;
        while (current != NULL) {
            if (current->pcb.pid == pid) {
                return current->pcb.lifetime;
            }
            current = current->next;
        }

        throw Exception(EINVAL, "The entry for the given PID does NOT EXIST");
    }

    /* ======================================================================== */

    uint32_t pctMemSize(uint16_t pid)
    {
        soProbe(306, "%s(%u)\n", __func__, pid);

        require(pctList != UNDEF_PCT_NODE, "The PCT linked list must exist");
        require(pid > 0, "a valid process ID must be greater than zero");

        /* replace with your code */
        //throw Exception(ENOSYS, __func__);
        PctNode *current = pctList;
        while (current != NULL) {
            if (current->pcb.pid == pid) {
                return current->pcb.memSize;
            }
            current = current->next;
        }

        throw Exception(EINVAL, "The entry for the given PID does NOT EXIST");
    }

    /* ======================================================================== */

    uint32_t pctMemAddress(uint16_t pid)
    {
        soProbe(307, "%s(%u)\n", __func__, pid);

        require(pctList != UNDEF_PCT_NODE, "The PCT linked list must exist");
        require(pid > 0, "a valid process ID must be greater than zero");

        /* replace with your code */
        //throw Exception(ENOSYS, __func__);
        PctNode *current = pctList;
        while (current != NULL) {
            if (current->pcb.pid == pid) {
                return current->pcb.memStart;
            }
            current = current->next;
        }

        throw Exception(EINVAL, "The entry for the given PID does NOT EXIST");
    }

    /* ======================================================================== */

} // end of namespace somm22
