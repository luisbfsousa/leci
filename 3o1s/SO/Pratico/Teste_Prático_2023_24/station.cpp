#include <dbc.h> //???
#include <stdio.h>
#include <stdlib.h>

#include "train.h"

// TODO point: changes probably required to this function
void init_station(Station* station)
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error

    station->train = NULL; // no train in station
    station->total_num_seats = 0;
    station->num_seats_occupied = 0;
    station->open = 1;

}

// TODO point: changes probably required to this function
void term_station(Station *station)
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error

    check(station->train == NULL, "a train still in station"); // a false value indicates a program error
    check(station->total_num_seats == station->num_seats_occupied, "a train still in station"); //

}

// TODO point: changes probably required to this function
void close_station(Station *station)
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error
    require(station->open, "Station not opened"); // in this simulation this condition is NOT
                                                    // a conditional synchronization point

    // TODO point: PUT YOUR STATION TERMINATION NOTIFICATION CODE HERE
    // (no more trains, so waiting passengers should be notified to leave station):
    station->open = 0; 
}

// TODO point: changes probably required to this function
void set_next_train(Station *station, Train *train)
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error
    require(train != NULL, "NULL pointer to train");
    require(station->train == NULL, "a train still in station"); // a false value indicates a program error
                                                                // IMPORTANT: in a shared station, it may
                                                                // be required)

    station->train = train;
    station->total_num_seats = train->total_num_seats;
    station->num_seats_occupied = 0;
}

// TODO point: changes probably required to this function
// TODO point: changes probably required to this function
void train_departure(Station *station)
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error

    // TODO point: PUT YOUR TRAIN DEPARTURE NOTIFICATION CODE HERE:
    station->train = NULL;
    station->total_num_seats = 0;
    station->num_seats_occupied = 0;
}

// TODO point: changes probably required to this function
int passenger_enters_station_and_wait_next_train(Station *station, int pass_id) // returns seat number
{
    require(station != NULL, "NULL pointer to station"); // a false value indicates a program error
    require(pass_id >= 0 && pass_id < MAX_ID, "Invalid passenger id"); // a false value indicates a program error
    require(station->num_seats_occupied <= station->total_num_seats, "Train full"); // IMPORTANT: in a shared station, it may not result from
                                                                                    // (so change or comment this line in the concurrent version

    int res;
    res = enter_train(station->train, pass_id);

    check_valid_seat(res);
    station->num_seats_occupied++;

    return res;
}