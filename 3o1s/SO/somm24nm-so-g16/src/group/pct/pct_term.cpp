/*
 *  \author Luis Sousa 108583
 */

#include "somm24.h"

namespace group 
{

// ================================================================================== //

    void pctTerm() 
    {
        soProbe(302, "%s()\n", __func__);

        require(pctList != UNDEF_PCT_NODE, "Module is not in a valid open state!");
        //throw Exception(ENOSYS, __func__);
        /* TODO POINT: Replace next instruction with your code */

        PctNode *current = pctList;
        while (current != NULL) {
            PctNode *next = current->next;
            free(current);
            current = next;
        }

        pctList = NULL;
    }

// ================================================================================== //

} // end of namespace group

