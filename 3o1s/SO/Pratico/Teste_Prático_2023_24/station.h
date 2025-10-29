// passengers always enter trains through a station
// (i.e. using function: passenger_enters_station_and_wait_next_train)

// The following operations are defined:
//     initStation/termStation (no synchronization required)
//     close station (close possibility for train to arrive)
//     define the next train to arrive to station (when possible)
//     train departure (opening the possibility for the arrival of the next train)
//     passenger enters station and waits for seat in next train (if possible, i.e. while station is open)

#ifndef STATION_H
#define STATION_H

#include <stdio.h>
#include "settings.h"
#include "train.h"

typedef struct
{
    Train* train; // current train in station (set a new train should be an atomic operation)
    int total_num_seats; // total number of seats of current train (0 if no train in station)
    int num_seats_occupied; // total number of occupied seats of current train (0 if no train in station)
    int open; // is station open (a closed station should trigger the end of the simulation)
    //TODO point If necessary, add synchronization declarations here
} Station;

void init_station(Station* station);
void term_station(Station* station);
void close_station(Station* station);
void set_next_train(Station* station, Train* train);
void train_departure(Station* station);
int passenger_enters_station_and_wait_next_train(Station* station, int pass_id); // returns seat number

#endif
