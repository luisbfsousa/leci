/*
 *  \author Artur Pereira (artur at ua dot pt)
 */

#include "swp.h"
#include "tam.h"
#include "binselection.h"

#include <stdio.h>
#include <stdint.h>

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */
SwappingPolicy swappingPolicy = UndefSwappingPolicy;    // No policy has been yet defined
SwpNode *swpList = UNDEF_SWP_NODE;                      // Pointer to head of list
SwpNode *swpTail = UNDEF_SWP_NODE;                      // Pointer to tail of list

// ================================================================================== //

namespace binaries {
    void swpInit(SwappingPolicy policy);
    void swpTerm();
    void swpPrint(FILE *fout);
    void swpInsert(uint16_t pid, uint32_t size);
    uint16_t swpFetch(uint32_t sizeAvailable);
}

namespace group {
    void swpInit(SwappingPolicy policy);
    void swpTerm();
    void swpPrint(FILE *fout);
    void swpInsert(uint16_t pid, uint32_t size);
    uint16_t swpFetch(uint32_t sizeAvailable);
}

// ================================================================================== //

void swpInit(SwappingPolicy policy)
{
    if (soBinSelected(601))
        binaries::swpInit(policy);
    else
        group::swpInit(policy);
}

// ================================================================================== //

void swpTerm()
{
    if (soBinSelected(602))
        binaries::swpTerm();
    else
        group::swpTerm();
}

// ================================================================================== //

void swpPrint(FILE *fout)
{
    if (soBinSelected(603))
        binaries::swpPrint(fout);
    else
        group::swpPrint(fout);
}

// ================================================================================== //

void swpInsert(uint16_t pid, uint32_t size)
{
    if (soBinSelected(604))
        binaries::swpInsert(pid, size);
    else
        group::swpInsert(pid, size);
}

// ================================================================================== //

uint16_t swpFetch(uint32_t sizeAvailable)
{
    if (soBinSelected(605))
        return binaries::swpFetch(sizeAvailable);
    else
        return group::swpFetch(sizeAvailable);
}

// ================================================================================== //

