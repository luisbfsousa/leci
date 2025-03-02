/**
 * \defgroup swp SWP -- Swapped Process Queue
 *
 * \details 
 *   At the time a process will be admitted to the system, maybe there is not enough main memory
 *   available to store its address space.
 *   In such a case, the process' address space is stored in the swapped area until main memory
 *   becomes available.
 *
 *   The Swapped Process Queue (\c swp) module is responsible for storing the process' data.
 *   Insertion in this queue is always done at its end (tail).
 *   Peeking and removal can be done at any position.
 *
 *   The supporting data structure is a single linked list implemented from scratch in this module.
 *   The list must be kept sorted according to the insertion order.
 *
 *   The following table presents a list of the functions in this module, including:
 *   - the function name;
 *   - the function ID, that can be used to switch between the binary and group version;
 *   - an estimation of the effort required to implement it;
 *   - a brief description of the function role.
 *   <table>
 *   <tr> <th> \c function <th align="center"> function ID <th align="center"> level <th>role
 *   <tr> <td> \c swpInit() <td align="center"> 601 <td> 1 (very low) <td> Open the module
 *   <tr> <td> \c swpTerm() <td align="center"> 602 <td> 2 (low) <td> Closes the module
 *   <tr> <td> \c swpPrint() <td align="center"> 603 <td> 2 (low) <td> Prints the internal state of the module
 *   <tr> <td> \c swpInsert() <td align="center"> 604 <td> 3 (low medium) <td> Append a new entry to the queue
 *   <tr> <td> \c swpFetch() <td align="center"> 605 <td> 4 (medium) <td> Remove an entry, accordingly to the swapping policy
 *   </table>
 *
 * \note The use of functions from the **Standard Template Library** are forbidden by default 
 *   unless previously agreed with teachers
 *
 *  \author Artur Pereira - 2024
 */

#ifndef __SOMM24_NM_SWP__
#define __SOMM24_NM_SWP__

#include "tam.h"

#include <stdint.h>

/** @{ */

// ================================================================================== //

/**
 * \brief Relevant data for a swapped process
 */
struct SwpProcessData
{
    uint16_t pid;   ///< PID of a swapped process
    uint32_t size;  ///< size requested by the process
};

// ================================================================================== //

/**
 * \brief Node for the list of swapped processes
 * \details
 */
struct SwpNode
{
    SwpProcessData process;         ///< relevant data of a process swapped
    struct SwpNode *next;           ///< pointer no next node
};

// ================================================================================== //

#define UNDEF_SWP_NODE ((SwpNode*)0xfffffffc)

extern SwappingPolicy swappingPolicy;    ///< No policy has been yet defined
extern SwpNode *swpList;                 ///< Pointer to head of list
extern SwpNode *swpTail;                 ///< Pointer to tail of list

// ================================================================================== //

/**
 * \brief Opens the module, initializing the internal data structure
 * \details
 *   - The module's internal data structure, defined in file \c frontend/swp.cpp, 
 *     should be initialized properly
 *
 *   This is a quite trivial function.
 *
 * \param [in] policy The swapping policy to be used
 */
void swpInit(SwappingPolicy policy);

// ================================================================================== //

/**
 * \brief Closes the module, setting the internal data structure to the closed state
 * \details
 *   - In the closed state, the supporting data structure has well-defined values.
 *   - This function, should also release any memory it has dynamically allocated.
 */
void swpTerm();

// ================================================================================== //

/**
 * \brief Prints the internal state of the SWP module
 * \details
 *  The current state of the swapped processes queue (SWP) must be
 *  printed to the given stream.
 *
 *  The following must be considered:
 *  - The linked-list elements should be printed in natural order.
 *  - The output must be exactly the same as the one produced by the binary version.
 *  - In case of an error, an appropriate exception must be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *
 * \param [in] fout File stream where to send output 
 */
void swpPrint(FILE *fout);

// ================================================================================== //

/**
 * \brief Append a new entry to the queue
 * \details
 *  - A new entry should be created and added to the end of the SWP queue.
 *  - If an anomalous situation occurs, an appropriate exception must be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *  
 * \param [in] pid Id of the process swapped out
 * \param [in] size Amount of memory required by the job
 */
void swpInsert(uint16_t pid, uint32_t size);

// ================================================================================== //

/**
 * \brief Remove the earliest element according to the active swapping policy
 * \details
 *  - If the active policy is \c FIFO than remove the first entry in the list 
 *    if the value of field \c size is not bigger than the specified
 *  - If the active policy is \c FirstFit than remove the first process that fits in the available memory
 *  - The element <b>must be removed</b> from the queue.
 *  - All exceptions must be of the type defined in this project (Exception).
 *
 * \param [in] sizeAvailable Maximum block size available im main memory
 *
 * \return PID of the process associated to the removed entry or 0 (zero) if no process fits
 */
uint16_t swpFetch(uint32_t sizeAvailable);

// ================================================================================== //

/** @} */

#endif /* __SOMM24_NM_SWP__ */

