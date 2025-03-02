/**
 * \defgroup rdy RDY -- Ready to Run Process Queue
 *
 * \details 
 *   At the time a job is admitted to the pool of active processes, 
 *   assuming its logical address space was stored in main memory,
 *   maybe is not possible to put it running, because the processor is not idle.
 *   In such situations, the new process is put in the READY state and added to the queue of ready processes.
 *   The Ready Process Queue (\c rdy) module is responsible for storing the relevant process' data.
 *
 *   - The supporting data structuInitializes the support internal data structure;re is a single linked list implemented from scratch in this module.
 *   - List elements are kept ordered taking into account the scheduling policy.
 *   - If the policy is \c FCFS, list elements are kept sorted according to the insertion order.
 *   - If the policy is \c SPN, list elements are kept sorted in ascending order of their burst duration (lifetime).
 *
 *   The following table presents a list of the functions in this module, including:
 *   - the function name;
 *   - the function ID, that can be used to switch between the binary and group version;
 *   - an estimation of the effort required to implement it;
 *   - a brief description of the function role.
 *   <table>
 *   <tr> <th> \c function <th align="center"> function ID <th align="center"> level <th>role
 *   <tr> <td> \c rdyInit() <td align="center"> 501 <td> 1 (very low) <td> Opens the module
 *   <tr> <td> \c rdyTerm() <td align="center"> 502 <td> 2 (low) <td> Closes the module
 *   <tr> <td> \c rdyPrint() <td align="center"> 503 <td> 2 (low) <td> Prints the internal state of the module
 *   <tr> <td> \c rdyInsert() <td align="center"> 504 <td> 4 (medium) <td> Add a new entry, based on scheduling policy
 *   <tr> <td> \c rdyFetch() <td align="center"> 505 <td> 3 (low medium) <td> Removes and return the entry
 *   </table>
 *
 * \note The use of functions from the **Standard Template Library** are forbidden by default 
 *   unless previously agreed with teachers
 *
 *  \author Artur Pereira - 2024
 */

#ifndef __SOMM24_NM_RDY__
#define __SOMM24_NM_RDY__

#include "tam.h"

#include <stdint.h>

/** @{ */

// ================================================================================== //

/**
 * \brief Relevant data for a ready process
 */
struct RdyProcessData
{
    uint16_t pid;       ///< PID of a swapped process
    double lifetime;    ///< lifetime of the process
};

// ================================================================================== //

/**
 * \brief Node for the list of swapped processes
 * \details
 */
struct RdyNode
{
    RdyProcessData process;     ///< relevant data of a rdy process
    RdyNode *next;       ///< pointer no next node
};

// ================================================================================== //

#define UNDEF_RDY_NODE ((RdyNode*)0xfffffffb)

extern SchedulingPolicy schedulingPolicy;   ///< Scheduling policy in use

extern RdyNode *rdyList;    ///< Pointer to head of list
extern RdyNode *rdyTail;    ///< Pointer to tail of list

// ================================================================================== //

/**
 * \brief Opens the module, initializing the internal data structure
 * \details
 *   - The module's internal data structure, defined in file \c frontend/rdy.cpp, 
 *     should be initialized properly
 *
 * \param [in] policy Scheduling policy to be used
 */
void rdyInit(SchedulingPolicy policy);

// ================================================================================== //

/**
 * \brief Closes the module, setting the internal data structure to the closed state
 * \details
 *   - In the closed state, the supporting data structure has well-defined values.
 *   - This function, should also release any memory it has dynamically allocated.
 */
void rdyTerm();

// ================================================================================== //

/**
 * \brief Prints the internal state of the RDY module
 * \details
 *  The current state of the ready queue (RDY) must be
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
void rdyPrint(FILE *fout);

// ================================================================================== //

/**
 * \brief Add a new entry to the queue
 * \details
 *  - A new entry should be created and added to the queue.
 *  - Point of insertion depends on the scheduling policy in use
 *  - If an anomalous situation occurs, an appropriate exception must be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *  
 * \param [in] pid Id of the process associated to the event
 * \param [in] lifetime Time the process takes to run
 */
void rdyInsert(uint16_t pid, double lifetime);

// ================================================================================== //

/**
 * \brief Remove and return an entry from the queue
 * \details
 *  - If the list is empty, 0 must be returned;
 *  - otherwise, the first entry must be removed from the list and its PID returned;
 *  - In case of an error, an appropriate exception should be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *
 * \return The PID of the process fetched from the list; 0 if list is empty
 */
uint16_t rdyFetch();

// ================================================================================== //

/** @} */

#endif /* __SOMM24_NM_RDY__ */

