/**
 * The seat allocation represents a given number of seats (implemented with a normal array).
 * Passengers enter in irrelevant order: when the train arrives to destination
 * all passengers leave in irrelevant order (order is irrelevant).
 * Unused seats are represented by INVALID_ID value.
 *
 * The following operations are defined:
 *      \li initialization/termination (no synchronization required)
 *      \li enter train (or possible): when full, returns TRAIN_FULL (no blocking)
 *      \li decrement departure time countdown to zero making the train to
 *      \li departure (in_transit) when reaches zero
 *      \li train arrives to destination, notify all passengers to leave train (irrelevant order)
 */

#ifndef TRAIN_H
#define TRAIN_H

#include <stdlib.h>
#include "settings.h"

// TODO point: uncomment the desired implementation
//#include "thread.h"
//#include "process.h"

typedef struct
{
    char name[5];                                  // train identification (TNNN: T001, ...)
    int pass_id[MAX_TRAIN_NUM_SEATS];              // passenger ID (works as an index in array all_passengers)
    int total_num_seats;                           // number of seats available
    int num_seats_occupied;                        // number of seats already taken
    int time_to_departure;                         // countdown time to departure
    int in_transit;                                // true if train in transit, false if in station
    // TODO point: if necessary, add synchronization declarations here
} Train;

extern void notify_passenger_of_train_arrival(int pass_id); // pass_id is passenger identification

void init_train(Train* train, int total_num_seats, int time_to_departure);
void term_train(Train* train);
int enter_train(Train* train, int pass_id);       // returns seat number (TRAIN_FULL if train is full)
void decrement_departure_time(Train* train);      // train leaves station when time to departure reaches zero
void train_arrived_destination(Train* train);     //train atrives to destination, notify all passengers to leave train (irrevelant order)

#endif