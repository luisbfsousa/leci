/**
 * \defgroup jdt JDT -- Job Description Table
 *
 * \details
 *  The simulation is driven by an input array (\c jdtTable), 
 *  representing a sequence of jobs, that will be submitted to the system.
 *
 *  The relevant data for every job is:
 *  - the time of submission
 *  - the time it takes to execute 
 *  - the size of its logical address space
 *  
 *   The supporting data structure is a fixed-size static array.
 *
 *   The following table presents a list of the functions in this module, including:
 *   - the function name;
 *   - the function ID, that can be used to switch between the binary and group version;
 *   - an estimation of the effort required to implement it;
 *   - a brief description of the function role.
 *   <table>
 *   <tr> <th> \c function <th align="center"> function ID <th align="center"> level <th>role
 *   <tr> <td> \c jdtInit() <td align="center"> 201 <td> 1 (very low) <td> Opens the module
 *   <tr> <td> \c jdtTerm() <td align="center"> 202 <td> 1 (very low) <td> Closes the module
 *   <tr> <td> \c jdtPrint() <td align="center"> 203 <td> 2 (low) <td> Prints the current contents of the job description table
 *   <tr> <td> \c jdtLoad() <td align="center"> 204 <td> 6 (high) <td> Fills the job description table from a given file
 *   <tr> <td> \c jdtRandomFill() <td align="center"> 205 <td> 5 (medium high) <td> Randomly fills the job description table
 *   <tr> <td> \c jdtNextSubmission() <td align="center"> 206 <td> 2 (low) <td> Return the time of the next job will be submitted to the system
 *   <tr> <td> \c jdtFetchNext() <td align="center"> 207 <td> 3 (low medium) <td> Remove and return the data of the first job in the queue
 *   </table>
 *
 * \note The use of functions from the **Standard Template Library** are forbidden by default 
 *   unless previously agreed with teachers
 *
 *  \author Artur Pereira - 2024
 */

#ifndef __SOMM24_NM_JDT__
#define __SOMM24_NM_JDT__

#include "tam.h"

#include <stdint.h>

/** @{ */

// ================================================================================== //

#define UNDEF_JOB_INDEX 0xfff1     ///< Indication of a undef array index
#define UNDEF_JOB_COUNT 0xfffa      ///< Pattern meaning the size is undefined

extern Job jdtTable[MAX_JOBS]; ///< The array supporting the job description table
extern uint16_t jdtIn;         ///< index of the first empty cell
extern uint16_t jdtOut;        ///< index of the first occupied cell
extern uint16_t jdtCount;      ///< actual number of jobs in the job description table

// ================================================================================== //

/**
 * \brief Opens the module, initializing the internal data structure
 * \details
 *  The module's internal data structure, defined in file \c frontend/jdt.cpp, 
 *  must be initialized properly.
 *
 */
void jdtInit();

// ================================================================================== //

/**
 * \brief Closes the module, setting the internal data structure to the closed state
 * \details
 *   - In the closed state, the supporting data structure has well-defined values.
 */
void jdtTerm();

// ================================================================================== //

/**
 * \brief Prints the internal state of the module
 * \details
 *
 *  - The table elements should be printed in natural order.
 *  - The output must be the same as the one produced by the binary version.
 *  - In case of an error, an appropriate exception must be thrown.
 *  - All exceptions must be of the type defined in this project (Exception).
 *
 * \param [in] fout File stream where printing must be written to
 */
void jdtPrint(FILE *fout);

// ================================================================================== //

/**
 * \brief Fill the job description table from data parsed from a file stream
 * \details
 *   - The file is the same as the config file, but only information between tags
 *     'Begin Jobs' and 'End Jobs' is to be considered.
 *     So, all the other parts of the file are to be ignored.
 *   - Syntactically, the applicable file section is composed of a sequence of lines,
 *     each one representing a comment or a job description.
 *   - A line representing a job description is a semi-colon separated sequence of the following
 *     fields:
 *     - a real, positive number, representing the time at which a job will be submitted to the system;
 *     - a real, greater than zero number, representing the duration of its execution;
 *     - an integer, greater then zero number, representing the size of its logical address space
 *   - Lines starting with a hash sign (#) are comments and are to be discarded
 *   - There may be comments at the end of a line representing a job description
 *   - Whitespaces (spaces or tabs) are syntactically irrelevant, and may appear any where
 *   - Blank lines are also to be ignored
 *   - Appropriate syntactic or semantic error messages should be sent to the *standard error*
 *
 * \note The load is incremental, meaning this function can be called with a non empty table
 *
 *  The following must be checked while parsing the input file:
 *  - Submission times should appear in ascending order and can not be negative
 *  - Lifetimes must be greater than zero
 *  - Size of address spaces must be greater than zero and not greater than the maximum allowed size
 *  - If case of a **syntactic** or **semantic error**, 
 *    an appropriate error message should be printed to the *standard error*
 *    and the line **discarded**
 *  - At the end, if a syntactic or semantic error occurred, the \c EINVAL error number 
 *    should be thrown
 *  - In case of a system error, the \c errno error number should be thrown
 *  - All exceptions must be of the type defined in this project (Exception)
 *
 * \param [in] fin file stream where data is to be read from
 * \param [in] maxSize maximum size for the memory a job may request
 *
 * \return number of jobs read
 */
uint16_t jdtLoad(FILE *fin, uint32_t maxSize);

// ================================================================================== //

/**
 * \brief Randomly fills the job description table
 * \details
 *
 *  The following must be considered:
 *  - For the same \c seed and \c count the sequence generated should always be the same
 *  - If \c cnt is 0 (zero), the actual number of jobs must be randomly generated in the range [2,MAX_JOBS]
 *  - Submission times should be randomly generated in ascending order,
 *    with distances between successive submissions in the range [0,100] in steps of 0.1
 *  - Lifetimes should be randomly generated in the range [10,1000] in steps of 0.1
 *  - Size of address spaces must be greater than zero and not greater the maximum allowed size
 *
 * \note The fill is incremental, meaning this function can be called with a non empty table
 *
 * \param [in] seed seed to start the random number generator
 * \param [in] cnt number of jobs to be generated
 * \param [in] maxSize maximum size for the memory a job may request
 *
 * \return number of jobs read
 */
uint16_t jdtRandomFill(uint32_t seed, uint16_t cnt, uint32_t maxSize);

// ================================================================================== //

/**
 * \brief Return the submission time of the first job in the job description table
 *
 * \return the time of the first job in the queue or \c NEVER if empty
 */
double jdtNextSubmission();

// ================================================================================== //

/**
 * \brief Remove and return the first job in the job description table
 *
 *  The following must be considered:
 *  - The \c EINVAL exception should be thrown, if the list is empty
 *  - All exceptions must be of the type defined in this project (Exception)
 *  
 * \return the first job in the queue
 */
Job jdtFetchNext();

// ================================================================================== //

/** @} */

#endif /* __SOMM24_NM_JDT__ */

