#ifndef SETTINGS_H
#define SETTINGS_H

#include <stdio.h>
#include <stdlib.h>

// brief maximum passenger name length
#define MAX_NAME 31

// brief maximum number of passengers
#define MAX_PASSENGERS 100

// brief maximum number of trains
#define MAX_TRAINS 20

// brief number of seats per train
#define MAX_TRAIN_NUM_SEATS 10

// brief max departure time (measured in number of ticks)
#define MAX_DEPARTURE_TIME 20

// brief maximum time (in microseconds) in random waits
#define MAX_WAIT 100000

// brief maximum countdown tick (in microseconds)
#define MAX_COUNTDOWN_TICK 100000

// brief maximum countdown tick (in microseconds)
#define MAX_COUNTDOWN_TICK 100000

// brief dummy seat number (can be used to terminate simulation)
#define DUMMY_SEAT MAX_TRAIN_NUM_SEATS 

#define TRAIN_FULL (-1)  // brief train full indication

// brief maximum value accepted for an id
#define MAX_ID (MAX_PASSENGERS-1)

// brief invalid seat number
#define INVALID_SEAT 88888888

// brief invalid id number
#define INVALID_ID 99999999

// brief passenger id verification test             //pode n estar a 100%
#define check_valid_passenger_id(id) do { if((id < 0) || (id > MAX_ID )) { printf("\e[31;01m[%s, line %d] invalid passenger id (%d)\e[0m\n", __FILE__, __LINE__, id); exit(EXIT_FAILURE); } } while(0)

// brief train id verification test                 //pode n estar a 100%
#define check_valid_train_id(id) do { if((id < 0) || (id > MAX_TRAINS)) { printf("\e[31;01m[%s, line %d] invalid train id (%d)\e[0m\n", __FILE__, __LINE__, id); exit(EXIT_FAILURE); } } while(0)

// brief passenger/train name verification test     //pode n estar a 100%
#define check_valid_name(name, type) do { if(name[0] == '\0') { printf("\e[33;01m[%s, line %d, function %s] ERROR: Invalid %s name: %s\e[0m\n", __FILE__, __LINE__, __FUNCTION__, type, name); exit(EXIT_FAILURE); } } while(0)

// brief seat number verification test              //pode n estar a 100%
#define check_valid_seat(seat) do { if((seat < 0 || seat >= MAX_TRAIN_NUM_SEATS) && seat != DUMMY_SEAT) { printf("\e[33;01m[%s, line %d, function %s] ERROR: Invalid seat number %d\e[0m\n", __FILE__, __LINE__, __FUNCTION__, seat); exit(EXIT_FAILURE); } } while(0)

//ERROR: Invalid seat number %u!\e(m\n", __FILE__, __LINE__, __FUNCTION__, seat); exit(EXIT_FAILURE);
//esse error esta por completar

#endif 
