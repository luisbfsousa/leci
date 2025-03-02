/**
 *  \mainpage SO+FSO group work, academic year 2024-2025, normal season
 *
 *  \brief Simulating a uniprocessor scheduler, contiguous memory allocation system
 *    
 *  \author Artur Pereira - 2022-2024
 *
 *  \details
 *    The purpose of this project is to implement a system that simulates the activity
 *    of a computational system, composed of a single processor and a limit amount of main memory.
 *    The input to the system are jobs, that are assumed to have a single burst of CPU execution
 *    and whose images are assume to occupy a contiguous region of main memory.<br/>
 *
 * \anchor keyterms
 *
 *    The following terms are key for a good understanding of the system:
 *    - **job** - a task that is submitted to the system and needs to be executed;
 *    - **process** - a means to executed a job within the system;
 *    - **pid** - process identification, a positive, greater than zero integer value 
 *      that uniquely identifies a process;
 *    - **submission time** - the time at which a job is submitted to the system;
 *    - **admission time** - the time at which a job is admitted for execution;
 *    - **store time** - the time at which a job has its address space stored in main memory;
 *    - **start time** - the time at which the execution of a job/process begins;
 *    - **lifetime** - the time a job/process takes to execute;
 *    - **finish time** - the time at which a process completes its execution;
 *    - **frame** - the unit of memory in the system
 *    - **address space** - the amount of memory a job requires;
 *    - **process state** - the state at which a process is at a given moment in time, being one
 *      of NEW, RUNNING, READY, SWAPPED, or TERMINATED.
 *
 *    The system is composed of a central module plus 5 satellite modules:
 *    - \c SIM, the central module, which provides means to make and control the simulation
 *    - \c JDT, which holds information and provides functionality about the jobs that will be submitted to the system
 *    - \c PCT, which holds information and provides functionality about the processes being simulated
 *    - \c MEM, which deals with the allocation / deallocation of memory used by processes
 *    - \c RDY, which holds information and provides functionality about processes ready to execute (waiting for the processor)
 *    - \c SWP, which holds information and provides functionality about the swapped processes
 *
 *    There is also a number of auxiliary modules:
 *    - \c DbC, which provides some used macros
 *    - \c probing, which provides a probing mechanism
 *    - \c binselection, which allows to use a binary version of a function
 *    - \c exception, which provides a way to throw exceptions
 * 
 * The simulation must show how the scheduling takes place.
 */

#ifndef __SOMM24_NM__
#define __SOMM24_NM__

/**
 * \defgroup somm24 Main modules
 *  \brief 
 *    modules to be developed
 *
 * \defgroup tam TAM -- Common Data Types, Macros and Enumerations
 * \ingroup somm24
 * \brief
 *   Declaration of data types, macros and enumerations common to two or more modules
 *   
 * \defgroup sim SIM -- Simulation Management
 * \ingroup somm24
 * \brief 
 *   The <b>Simulation management</b> module provides means to run the simulation
 *
 * \defgroup jdt JDT -- Job Description Table
 * \ingroup somm24
 * \brief 
 *   The <b>Job Description Table (\c jdt)</b> module holds information about
 *   the jobs that will be submitted to the system
 *
 * \defgroup pct PCT -- Process Control Table
 * \ingroup somm24
 * \brief 
 *   The <b>Process Control Table (\c pct)</b> module holds information about
 *   the processes being simulated.
 *
 * \defgroup mem MEM -- Memory Management
 * \ingroup somm24
 * \brief
 *   The <b>Memory Management (\c mem)</b> module deals with the allocation / deallocation
 *   of memory used by processes.
 *
 * \defgroup rdy RDY -- Ready to Run Process Queue
 * \ingroup somm24
 * \brief 
 *   The <b>Ready to Run Process Queue (swp)</b> module deals with the processes ready to run (waiting for the processor) 
 *
 * \defgroup swp SWP -- Swapped Process Queue
 * \ingroup somm24
 * \brief 
 *   The <b>Swap Process Queue (swp)</b> module deals with the processes that are swapped 
 *
 * <br>
 *
 * \defgroup aux Auxiliary modules
 * \brief Modules to aid in the development
 *
 * \defgroup exception Exception 
 * \ingroup aux
 * \brief 
 *   The <b>Exception</b> module provides a way to avoid defensive programming
 *   in the other components of the whole somm24 system.
 *
 * \defgroup probing Probing
 * \ingroup aux
 * \brief
 *   The <b>Probing toolkit</b> module provides a way to print probing
 *   messages that can be turned on/off
 *
 * \defgroup binselection BinSelection
 * \ingroup aux
 * \brief
 *   The <b>BinSelection toolkit</b> module provides a way to switch in run-time between
 *   the binary and group versions of the somm24 functions.
 *
 * \defgroup dbc Design-by-Contract
 * \ingroup aux
 * \brief The <b>Design-by-Contract</b> module provides wrappers to system calls, 
 *   that deal internally with error situations, either aborting execution or throwing exceptions
 *
 */

#include "dbc.h"
#include "exception.h"
#include "probing.h"

#include "binselection.h"

#include "tam.h"
#include "sim.h"
#include "jdt.h"
#include "pct.h"
#include "mem.h"
#include "rdy.h"
#include "swp.h"

#endif /* __SOMM24_NM__ */
