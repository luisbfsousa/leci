/**
 * \defgroup pct PCT -- Process Control Table
 *
 * \details
 *   The Process Control Table (\c pct) is a mapping that associates a process with a tuple of data.<br>
 *   The process itself is identified by a unique integer value, called Process Identification (\c PID).<br>
 *   An array of PIDs exist, that are filled at initialization.<br>
 *   To every process, the following data, which represents the process control block (PCB),
 *   is considered:
 *   - the process identification (PID);
 *   - the state of execution, being one of NEW, RUNNING, READY, SWAPPED or TERMINATED;
 *   - the time at which the process has been admitted to the system;
 *   - the time the process takes to execute;
 *   - the time at which its address space was stored in main memory;
 *   - the time at which the process starts running;
 *   - the time at which the process ends its execution;
 *   - the number of the first memory frame where the address space was stored;
 *   - the number of memory frames the address space comprises.
 *
 *   The time at which a process starts to be executed may be different from its admission time.
 *   To be executed, a process needs its address space to be totally resident in memory.
 *   If free memory, large enough to host its logical address space, doesn't exist, 
 *   the process must wait until it is available.
 *   To be executed, a process needs a processor. 
 *   If the processor is in use by another process, it must wait until it is available.
 *
 *   The following table presents a list of the functions in this module, including:
 *   - the function name;
 *   - the function ID, that can be used to switch between the binary and group version;
 *   - an estimation of the effort required to implement it;
 *   - a brief description of the function role.
 *   <table>
 *   <tr> <th> \c function <th align="center"> function ID <th align="center"> level <th>role
 *   <tr> <td> \c pctInit() <td align="center"> 301 <td> 3 (low medium) <td> Open the module
 *   <tr> <td> \c pctTerm() <td align="center"> 302 <td> 2 (low) <td> Closes the module
 *   <tr> <td> \c pctPrint() <td align="center"> 303 <td> 4 (medium) <td> Print the internal state of the module
 *   <tr> <td> \c pctNewProcess() <td align="center"> 304 <td> 4 (medium) <td> Add a new entry in the PCT table
 *   <tr> <td> \c pctLifetime() <td align="center"> 305 <td> 2 (low) <td> Return the time of execution of a process
 *   <tr> <td> \c pctMemSize() <td align="center"> 306 <td> 2 (low) <td> Return the size of the address space of the given process
 *   <tr> <td> \c pctMemAddress() <td align="center"> 307 <td> 2 (low) <td> Return the memory address of the given process
 *   <tr> <td> \c pctUpdateState() <td align="center"> 308 <td> 3 (low medium) <td> Update the state of a process
 *   </table>
 *
 * \note The use of functions from the **Standard Template Library** are forbidden by default 
 *   unless previously agreed with teachers
 *
 *  \author Artur Pereira - 2024
 */

#ifndef __SOMM24_NM_PCT__
#define __SOMM24_NM_PCT__

#include "tam.h"

#include <stdint.h>
#include <stdio.h>

/** @{ */

// ================================================================================== //

/**
 * \brief The Process Control Block data structure
 */
struct PctBlock {
    uint16_t pid;               ///< PID of a process
    ProcessState state;         ///< The state a process is at a given moment
    double admissionTime;       ///< The time the associated job has been admitted to the system
    double lifetime;            ///< The amount of time it needs to be executed
    double storeTime;           ///< The time at which its address space was stored in main memory
    double startTime;           ///< The time at which its execution starts
    double finishTime;          ///< The time of its termination
    uint32_t memStart;          ///< The first frame number where the address space were stored
    uint32_t memSize;           ///< The number of frames used by the process
};

// ================================================================================== //

/**
 * \brief Node for the Process Control Table
 */
struct PctNode {
    PctBlock pcb;           ///< The process control block
    struct PctNode *next;   ///< Pointer to the next node
};

// ================================================================================== //

#define UNDEF_PCT_NODE ((PctNode*)0xfffffffe)   ///< Indication of a non inited PCT list

// ================================================================================== //

extern PctNode *pctList;            ///< Pointer to head of list 

extern uint16_t pctPID[MAX_JOBS];   ///< List of PIDs for new processes

// ================================================================================== //

/**
 * \brief Opens the module, initializing the internal data structure
 * \details
 *  - The module's internal data structure, defined in file \c frontend/pct.cpp, 
 *    should be initialized properly
 *  - The first \c cnt positions of the list of PIDS must filled with values between \c pid0
 *    and pid0+cnt-1 in a random order
 *  - The remaining positons must be filled with zeros
 *
 * \param [in] pid0 lowest value for the PID of a process
 * \param [in] cnt number of PIDs to be generated
 * \param [in] seed seed to be used in the random number generator
 */
void pctInit(uint16_t pid0, uint16_t cnt, uint32_t seed);

// ================================================================================== //

/**
 * \brief Closes the module, setting the internal data structure to the closed state
 * \details
 *   - In the closed state, the supporting data structure has well-defined values.
 *   - This function, should also release any memory it has been dynamically allocated.
 */
void pctTerm();

// ================================================================================== //

/**
 * \brief Prints the internal state of the module
 * \details
 *  The current state of the process control table (PCT) must be
 *  printed to the given file stream.
 *
 *  - The table elements should be printed in natural order.
 *  - The output must be the same as the one produced by the binary version.
 *  - In case of an error, an appropriate exception must be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *
 * \param [in] fout File stream where printing must be written to
 */
void pctPrint(FILE *fout);

// ================================================================================== //

/**
 * \brief Add a new entry to the PCT table for an admitted job
 * \details
 *  A new entry should be created and added to the linked-list that implements 
 *  the process control table.
 *
 *  The following must be considered:
 *  - the PID must be retrieved from the list of PIDs (this may required the existence of a 
 *    static local variable);
 *  - list elements must be kept in ascending order of PID;
 *  - field \c state must be set at \c NEW
 *  - Fields \c storeTime, \c startTime, and \c finishTime must be set at \c UNDEF_TIME
 *  - Field \c memStart must be set at \c UNDEF_ADDRESS
 *  - Field \c finishTime must be set at \c UNDEF_TIME
 *  - All exceptions must be of the type defined in this project (Exception)
 *
 * \param [in] admissionTime Time the submitted job was admitted as a new process to the system
 * \param [in] lifetime The time the job/process takes to execute
 * \param [in] memSize The number of memory frames required by the job
 * \return The PID of the newly created process
 */
uint16_t pctNewProcess(double admissionTime, double lifetime, uint32_t memSize);

// ================================================================================== //

/**
 * \brief Return process execution duration
 * \details
 *  The following must be considered:
 *  - The \c EINVAL exception should be thrown, if an entry for the given pid does not exist.
 *  - All exceptions must be of the type defined in this project (Exception).
 *  
 * \param [in] pid PID of the process
 * \return the process' lifetime
 */
double pctLifetime(uint16_t pid);

// ================================================================================== //

/**
 * \brief Return process address space size
 * \details
 *  The following must be considered:
 *  - The \c EINVAL exception should be thrown, if an entry for the given pid does not exist.
 *  - All exceptions must be of the type defined in this project (Exception).
 *  
 * \param [in] pid PID of the process
 * \return the process' mem size
 */
uint32_t pctMemSize(uint16_t pid);

// ================================================================================== //

/**
 * \brief Return process memory start address
 * \details
 *  The following must be considered:
 *  - The \c EINVAL exception should be thrown, if an entry for the given pid does not exist.
 *  - All exceptions must be of the type defined in this project (Exception).
 *  
 * \param [in] pid PID of the process
 * \return the process' memory address
 */
uint32_t pctMemAddress(uint16_t pid);

// ================================================================================== //

/**
 * \brief Update process state
 * \details
 *   Update the current state of the given process.
 *   Fields to be updated depend on the new state of the process.
 *
 *   The following must be considered:
 *   - If the new state is TERMINATED, \c time refers to the finish time
 *   - If the new state is RUNNING, \c time refers to the start time
 *   - If the new state is READY, \c time refers to the store time and \c addr is the number of the start frame
 *   - The \c EINVAL exception should be thrown, if an entry for the given pid does not exist.
 *   - All exceptions must be of the type defined in this project (Exception).
 *
 * \param [in] pid PID of the process
 * \param [in] state The process new state
 * \param [in] time The time relative to the change of state, if applicable
 * \param [in] addr The address relative to the change of state, if applicable
 */
void pctUpdateState(uint16_t pid, ProcessState state, double time = UNDEF_TIME, uint32_t addr = UNDEF_ADDRESS);

// ================================================================================== //

/** @} */


#endif /* __SOMM24_NM_PCT__ */

