/**
 * @brief Simulation parameter values.
 */

#ifndef SETTINGS_H
#define SETTINGS_H

#include <stdio.h>
#include <stdlib.h>

/**
 *  \brief maximum patient name length
 */
#define MAX_NAME 31

/**
 *  \brief maximum number of patients
 */
#define MAX_PATIENTS 100

/**
 *  \brief maximum number of nurses
 */
#define MAX_NURSES 20

/**
 *  \brief maximum number of doctors
 */
#define MAX_DOCTORS 20

/**
 *  \brief maximum time (in microseconds) in random waits
 */
#define MAX_WAIT 100000

/**
 *  \brief initial priority value for Manchester system colors
 */
#define RED     1
#define ORANGE  2
#define YELLOW  4
#define GREEN   8
#define BLUE   16

/**
 *  \brief maximum elements in FIFO
 */
#define FIFO_MAXSIZE 5

/**
 *  \brief maximum value accepted for an id
 */
#define MAX_ID (MAX_PATIENTS-1)

/**
 *  \brief invalid id number
 */
#define INVALID_ID 99999999

/**
 *  \brief maximum value accepted for a priority
 */
#define MAX_PRIORITY BLUE

/**
 *  \brief invalid priority number
 */
#define INVALID_PRIORITY 55555555

/**
 *  \brief patient id verification test
 */
#define check_valid_patient_id(id) do { if(id < 0 || id > MAX_ID) { printf("\e[31;01m[%s, line %d, function %s] ERROR: invalid patient ID %d!\e[0m\n", __FILE__, __LINE__, __FUNCTION__, id); exit(EXIT_FAILURE); } } while(0)

/**
 *  \brief nurse id verification test
 */
#define check_valid_nurse_id(id) do { if(id < 0 || id >= MAX_NURSES) { printf("\e[31;01m[%s, line %d, function %s] ERROR: invalid nurse ID %d!\e[0m\n", __FILE__, __LINE__, __FUNCTION__, id); exit(EXIT_FAILURE); } } while(0)

/**
 *  \brief doctor id verification test
 */
#define check_valid_doctor_id(id) do { if(id < 0 || id >= MAX_DOCTORS) { printf("\e[31;01m[%s, line %d, function %s] ERROR: invalid doctor ID %d!\e[0m\n", __FILE__, __LINE__, __FUNCTION__, id); exit(EXIT_FAILURE); } } while(0)

/**
 *  \brief priority verification test
 */
#define check_valid_priority(priority) do { if(priority < 1 || priority > MAX_PRIORITY) { printf("\e[31;01m[%s, line %d, function %s] ERROR: invalid priority %d!\e[0m\n", __FILE__, __LINE__, __FUNCTION__, priority); exit(EXIT_FAILURE); } } while(0)

/**
 *  \brief patient name verification test
 */
#define check_valid_name(name) do { if(name[0] == '\0') { printf("\e[31;01m[%s, line %d, function %s] ERROR: invalid patient with name \"%s\"!\e[0m\n", __FILE__, __LINE__, __FUNCTION__, name); exit(EXIT_FAILURE); } } while(0)

#endif

