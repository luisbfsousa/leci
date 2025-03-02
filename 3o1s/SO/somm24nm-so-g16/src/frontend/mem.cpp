/*
 *  \author Artur Pereira (artur at ua dot pt)
 */

#include "mem.h"
#include "tam.h"
#include "binselection.h"

#include <stdio.h>
#include <stdint.h>

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */
MemoryAllocationPolicy memAllocationPolicy = UndefMemoryAllocationPolicy;   // Allocation policy in use

MemNode *memFreeList = UNDEF_MEM_NODE;       // Head of the free list 
MemNode *memOccupiedList = UNDEF_MEM_NODE;   // Head of the occupied list 

// ================================================================================== //

namespace binaries {
    void memInit(uint32_t memSize, uint32_t memKernelSize, MemoryAllocationPolicy policy);
    void memTerm();
    void memPrint(FILE *fout);
    uint32_t memAlloc(uint32_t size);
    void memFree(uint32_t address);
    void memAddNodeToFreeList(MemNode *p);
    void memAddNodeToOccupiedList(MemNode *p);
    MemNode *memRetrieveNodeFromFreeList(uint32_t size, MemoryAllocationPolicy policy);
    MemNode *memRetrieveNodeFromOccupiedList(uint32_t address);
    uint32_t memBiggestFreeBlockSize();
}

namespace group {
    void memInit(uint32_t memSize, uint32_t memKernelSize, MemoryAllocationPolicy policy);
    void memTerm();
    void memPrint(FILE *fout);
    uint32_t memAlloc(uint32_t size);
    void memFree(uint32_t address);
    void memAddNodeToFreeList(MemNode *p);
    void memAddNodeToOccupiedList(MemNode *p);
    MemNode *memRetrieveNodeFromFreeList(uint32_t size, MemoryAllocationPolicy policy);
    MemNode *memRetrieveNodeFromOccupiedList(uint32_t address);
    uint32_t memBiggestFreeBlockSize();
}

// ================================================================================== //

void memInit(uint32_t memSize, uint32_t memKernelSize, MemoryAllocationPolicy policy)
{
    if (soBinSelected(401))
        binaries::memInit(memSize, memKernelSize, policy);
    else
        group::memInit(memSize, memKernelSize, policy);
}

// ================================================================================== //

void memTerm()
{
    if (soBinSelected(402))
        binaries::memTerm();
    else
        group::memTerm();
}

// ================================================================================== //

void memPrint(FILE *fout)
{
    if (soBinSelected(403))
        binaries::memPrint(fout);
    else
        group::memPrint(fout);
}

// ================================================================================== //

uint32_t memAlloc(uint32_t size)
{
    if (soBinSelected(404))
        return binaries::memAlloc(size);
    else
        return group::memAlloc(size);
}

// ================================================================================== //

void memFree(uint32_t address)
{
    if (soBinSelected(405))
        binaries::memFree(address);
    else
        group::memFree(address);
}

// ================================================================================== //

uint32_t memBiggestFreeBlockSize()
{
    if (soBinSelected(406))
        return binaries::memBiggestFreeBlockSize();
    else
        return group::memBiggestFreeBlockSize();
}

// ================================================================================== //

void memAddNodeToFreeList(MemNode *p)
{
    if (soBinSelected(407))
        binaries::memAddNodeToFreeList(p);
    else
        group::memAddNodeToFreeList(p);
}

// ================================================================================== //

void memAddNodeToOccupiedList(MemNode *p)
{
    if (soBinSelected(408))
        binaries::memAddNodeToOccupiedList(p);
    else
        group::memAddNodeToOccupiedList(p);
}

// ================================================================================== //

MemNode *memRetrieveNodeFromFreeList(uint32_t size, MemoryAllocationPolicy policy)
{
    if (soBinSelected(409))
        return binaries::memRetrieveNodeFromFreeList(size, policy);
    else
        return group::memRetrieveNodeFromFreeList(size, policy);
}

// ================================================================================== //

MemNode *memRetrieveNodeFromOccupiedList(uint32_t address)
{
    if (soBinSelected(410))
        return binaries::memRetrieveNodeFromOccupiedList(address);
    else
        return group::memRetrieveNodeFromOccupiedList(address);
}

// ================================================================================== //

