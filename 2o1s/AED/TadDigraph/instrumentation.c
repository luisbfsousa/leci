/// A generic instrumentation module.
///
/// João Manuel Rodrigues, AED, 2023
/// Code for cpu_time() by
/// Tomás Oliveira e Silva, AED, October 2021
///
/// Use as follows:
///
/// // Name the counters you're going to use: 
/// InstrName[0] = "memops";
/// InstrName[1] = "adds";
/// InstrCalibrate();  // Call once, to measure CTU
/// ...
/// InstrReset();  // reset to zero
/// for (...) {
///   InstrCount[0] += 3;  // to count array acesses
///   InstrCount[1] += 1;  // to count addition
///   a[k] = a[i] + a[j];
/// }
/// InstrPrint();  // to show time and counters

#include "instrumentation.h"
#include <stdio.h>
#include <stdlib.h>

/// Cpu time in seconds
double cpu_time(void) ; ///

#if defined(__linux__) || defined(__APPLE__)

//
// GNU/Linux and MacOS code to measure elapsed time
//

#include <time.h>

double cpu_time(void) {
  struct timespec current_time;

  if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &current_time) != 0)  // the first argument could also be CLOCK_REALTIME
    return -1.0; // clock_gettime() failed!!!
  return (double)current_time.tv_sec + 1.0e-9 * (double)current_time.tv_nsec;
}

#endif


#if defined(_MSC_VER) || defined(_WIN32) || defined(_WIN64)

//
// Microsoft Windows code to measure elapsed time
//

#include <windows.h>

double cpu_time(void) {
  static LARGE_INTEGER frequency;
  static int first_time = 1;
  LARGE_INTEGER current_time;

  if (first_time != 0) {
    QueryPerformanceFrequency(&frequency);
    first_time = 0;
  }
  QueryPerformanceCounter(&current_time);
  return (double)current_time.QuadPart / (double)frequency.QuadPart;
}

#endif

/// Array of operation counters:
unsigned long InstrCount[NUMCOUNTERS];  ///extern

/// Array of names for the counters:
char* InstrName[NUMCOUNTERS] = {NULL};  ///extern
    // All elements initialized to NULL
    // See: https://en.cppreference.com/w/c/language/array_initialization

/// Cpu_time read on previous reset (~seconds)
double InstrTime;  ///extern

/// Calibrated Time Unit (in seconds, initially 1s)
double InstrCTU = 1.0;  ///extern

/// Find the Calibrated Time Unit (CTU).
/// Run and time a loop of basic memory and arithmetic operations to set
/// a reasonably cpu-independent time unit.
void InstrCalibrate(void) { ///
  // Defining environment variable INSTRCTU avoids calibration cycle!
  char *val = getenv("INSTRCTU");
  if (val != NULL) {
    InstrCTU = atof(val);
  }
  else {
    const int size = 4*1024;     // 2^12!
    const int mask = size - 1;
    int array[size];  // alloc array in stack, not initialized on purpose
    double time = cpu_time();
    srand((unsigned int)(time*1e9));
    for (int n = 0; n < 40000000; n++) {
      int i = rand() & mask;
      int j = rand() & mask;
      int k = rand() & mask;
      array[k] ^= array[i] + array[j] + i*j;
      //printf("%d %d %d\n", i, j, k);  // debug
    }
    InstrCTU = cpu_time() - time;
  }
  printf("# INSTRCTU=%f\n", InstrCTU);
}

/// Reset counters to zero and store cpu_time.
void InstrReset(void) { ///
  for (int i = 0; i < NUMCOUNTERS; i++)
    InstrCount[i] = 0ul;
  InstrTime = cpu_time();
}

// Print times and all named counter values
void InstrPrint(void) { ///
  // elapsed time since last reset:
  double time = cpu_time() - InstrTime;
  // compute time in calibrated time units:
  double caltime = time / InstrCTU;

  printf("#%14.15s\t%15.15s", "time", "caltime");
  for (int i = 0; i < NUMCOUNTERS; i++)
    if (InstrName[i] != NULL)
      printf("\t%15.15s", InstrName[i]);
  puts("");
  printf("%15.6f\t%15.6f", time, caltime);
  for (int i = 0; i < NUMCOUNTERS; i++)
    if (InstrName[i] != NULL)
      printf("\t%15lu", InstrCount[i]);  
  puts("");
}

