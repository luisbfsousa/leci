/**
 * @file
 *
 * \brief Generation of delays
 *
 * \author (2016,2022) Artur Pereira <artur at ua.pt>
 */
#ifndef __SO_IPC_IPC_DELAYS_
#define __SO_IPC_IPC_DELAYS_

#include <stdint.h>

/**
 * \brief Generate a busy waiting delay
 * \param n number of delay units
 */
void bwDelay(uint32_t n);

/** \brief Generate a random, busy waiting delay
 * \param n1 minimum number of delay units
 * \param n2 maximum number of delay units
 */
void bwRandomDelay(uint32_t n1, uint32_t n2);

/**
 * \brief Generate a delay based on a Gaussian distribution
 * \param mean mean time in milliseconds
 * \param std standard deviation in milliseconds
 */
void gaussianDelay(double mean, double std);

#endif /* __SO_IPC_IPC_DELAY_ */
