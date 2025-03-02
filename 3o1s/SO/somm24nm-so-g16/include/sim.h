/**
 * \defgroup sim SIM -- Simulation Management
 *
 * \details
 *  This modules provides the functionality that allows to run the simulation, 
 *  both totally or step by step.
 *
 *   The following table presents a list of the functions in this module, including:
 *   - the function name;
 *   - the function ID, that can be used to switch between the binary and group version;
 *   - an estimation of the effort required to implement it;
 *   - a brief description of the function role.
 *   <table>
 *   <tr> <th> \c function <th align="center"> function ID <th align="center"> level <th>role
 *   <tr> <td> \c simInit() <td align="center"> 101 <td> 5 (medium high) <td> Opens the simulation
 *   <tr> <td> \c simTerm() <td align="center"> 102 <td> 2 (low) <td> Closes the simulation
 *   <tr> <td> \c simPrint() <td align="center"> 103 <td> 4 (medium) <td> Prints the current state of the simulation
 *   <tr> <td> \c simConfig() <td align="center"> 104 <td> 6 (high) <td> Parse simulation parameters from a file
 *   <tr> <td> \c simStep() <td align="center"> 105 <td> 6 (high) <td> Run the simulation for one step, if possible
 *   <tr> <td> \c simRun() <td align="center"> 106 <td> 2 (low) <td> Run the simulation for a given number of steps, if possible, or to the end
 *   </table>
 *
 * \note The use of functions from the **Standard Template Library** are forbidden by default 
 *   unless previously agreed with teachers
 *
 *  \author Artur Pereira - 2024
 */

#ifndef __SOMM24_NM_SIM__
#define __SOMM24_NM_SIM__

#include "tam.h"

#include <stdint.h>

/** @{ */

// ================================================================================== //

/**
 * \brief General parameters that drives the simulation
 */
struct SimParameters {
    FILE *jobLoadStream;                        ///< stream where to load future jobs from, being NULL if random generated
    uint32_t jobMaxSize;                        ///< maximum memory a job may request
    uint32_t jobRandomSeed;                     ///< seed to start the random number generator, case jobs are to be randomly generated
    uint16_t jobCount;                          ///< number of jobs, case jobs are to be randomly generated
    uint16_t pidStart;                          ///< lowest value for the PID of a process
    uint32_t pidRandomSeed;                     ///< seed to start the random number generator of PIDs
    uint32_t memorySize;                        ///< total number of memory units in the system
    uint32_t memoryKernelSize;                  ///< number of memory units used by the kernel
    MemoryAllocationPolicy memoryAllocPolicy;   ///< memory allocation policy to be used in module MEM
    SchedulingPolicy schedulingPolicy;           ///< processor scheduling policy to be used in module RDY
    SwappingPolicy swappingPolicy;              ///< swapping policy to be used in module SWP
};

// ================================================================================== //

#define UNDEF_COUNT 0xfffffffe    ///< Pattern meaning the count is undefined
#define UNDEF_PID   0xffff        ///< Pattern meaning the PID is undefined
#define UNDEF_SEED  0xffffffff    ///< Pattern meaning the random seed is undefined

// ================================================================================== //

/*
 * The set of supporting variables CAN NOT BE CHANGED
 */
extern uint32_t stepCount;          ///< The number of simulation steps run so far
extern double simTime;              ///< The current simulation time
extern double submissionTime;       ///< Time at which the next job will will be submitted to the system
extern double runoutTime;           ///< Time at which the current running process will end its execution
extern uint16_t runningProcess;     ///< PID of the process owning the processor, being 0 if none

// ================================================================================== //

/**
 * \brief Opens the simulation
 * \details
 *   It opens the satellite modules and initializes the internal data structure of the module.
 *   Structure \c SimParameters represent the general information to run a simulation.
 *   All of its fields (parameters) have default values, but can be redefined by a config file.
 *
 *  This function should:
 *  - Create an instance of \c SimParameters filled with default values (see example ex01.cfg to know the default values)
 *  - call \c simConfig, if a config file is given;
 *  - if \c jobRandomSeed is undefined, it should be set to \c getpid()
 *  - if \c pidRandomSeed is undefined, it should be set to \c time(NULL)
 *  - call properly the init functions of the other (satellite) modules
 *  - Depending on the JDT parameters, either call jdtLoad or jdtRandomFill
 *  - Initialize properly the module's internal data structure, defined in file \c frontend/sim.cpp
 *
 * \note Recall that \c jdtLoad and \c jdtRandomFill return the number of jobs loaded/generated
 *
 * \param [in] fin pointer to the config file
 */
void simInit(FILE *fin);

// ================================================================================== //

/**
 * \brief Closes the simulation
 * \details
 *   The internal data structure of all modules must be put in the closed state
 *
 *  This function should:
 *  - set all internal variables to the close state
 *  - call the close functions of the satellite modules
 */
void simTerm();

// ================================================================================== //

/**
 * \brief Prints the internal state of the simulation
 * \details
 *   The internal state of the SIM module, along with some or all the satellite modules,
 *   must be printed.
 *
 *  This function should:
 *  - based on the second argument, call the print function of satellite modules
 *  - print the state of the SIM module
 *
 * \note 
 *   The printing must produce the same output as the binary version
 *
 * \param [in] fout File stream where to send output 
 * \param [in] satelliteModules Bitwise-or of satellite modules to be printed
 */
void simPrint(FILE *fout, uint32_t satelliteModules);

// ================================================================================== //

/**
 * \brief Config the simulation
 * \details
 *   The given file stream is parsed, looking for new values for the simulation parameters
 *
 *   - Lines between tags 'Begin Jobs' and 'End Jobs' are to be descarded
 *   - Syntactically, the applicable file section is composed of a sequence of lines,
 *     each one representing a comment or a parameter setting.
 *   - A line representing a parameter setting is a key-value pair
 *   - Lines starting with a hash sign (#) are comments and are to be discarded
 *   - There may be comments at the end of a line representing a parameter setting
 *   - Whitespaces (spaces or tabs) are syntactically irrelevant, and may appear any where
 *   - Blank lines are also to be ignored
 *   - At the end of the parsing, semantic values of the different parameters should be checked
 *   - If case of a **syntactic** or **semantic error**, 
 *     an appropriate error message should be printed to the *standard error*
 *     and the line **discarded**
 *   - If, at the end of the parsing, there were errors, the \c EINVAL error number should be thrown
 *   - All exceptions must be of the type defined in this project (Exception)
 *
 * \param [in] fin pointer to the config file
 * \param [in] spp pointer to the simulation parameters, filled with default values
 */
void simConfig(FILE *fin, SimParameters *spp);

// ================================================================================== //

/**
 * \brief Process, if possible, a step of the simulation
 * \details
 *  The are 2 possible future events, that come next:
 *  - the submission of a job;
 *  - the runout of the process owning the processor.
 *  
 *  The action to take is to process one of these events, the one that occurs first.
 *  - In case of a submission, a coming job must be admitted for execution,
 *    generating a new process.
 *    Depending on availability of memory to store its address space, 
 *    the new process goes to the ready or swap queue.
 *  - In case of a runout, the running process ends its execution,
 *    the memory it uses is released, and swapped processes may have their address space stored
 *    in main memory.
 *  - In any situation, one or more processes, will change state.
 *  - If the processor becomes idle, a ready one, if any, should be put running.
 *  - macro \c NEVER represents the time of an event that will not occur
 *
 *  \return \c true if one step was processed; \c false otherwise
 */
bool simStep();

// ================================================================================== //

/**
 * \brief Run the simulation for a given number of steps
 * \details
 *  This function just call the \c simStep an appropriate number of times.
 *
 *  The following must be considered:
 *  - The simulation can reach the end in less than the given number of steps.
 *  - If the given number of steps is zero, the simulation must run til the end.
 *
 * \param [in] cnt Number of simulation steps to execute
 */
void simRun(uint32_t cnt);

// ================================================================================== //

/** @} */

#endif /* __SOMM24_NM_SIM__ */

