// efile
// brief A metro station simulation.
// There is only one station with one single direction train line.

#include <stdio.h>
#include <stdlib.h> 
#include <string.h> 
#include <libgen.h> 
#include <unistd.h> 
#include <sys/wait.h> 
#include <sys/types.h> 
#include <math.h> 
#include <time.h> 
#include <stdint.h> 
#include <signal.h> 
#include <iostream> 
#include "settings.h"
#include "train.h" 
#include "station.h" 

// DO NOT CHANGE THE FOLLOWING VALUES, run program with option -h to set a different values 
static int npassengers = 4;  // number of passengers
static int ntrains = 1;      // number of trains
static int nseats = 4;       // number of seats in each train
static int nticks = 10;      // time to departure (measures in number of ticks)
static int maxwait = 10000;  // max random wait time (microseconds) 
static int countdown_tick = 100; // max random wait time (microseconds)

#define USAGE "Synopsis: %s [options]\n" \
              "\t Option \t\t\tDescription\n" \
              "\t -p num \t\t\tnumber of passengers (dfl: %d, min: %d, max: %d)\n" \
              "\t -t num \t\t\tnumber of trains (dfl: %d, min: %d, max: %d)\n" \
              "\t -s num \t\t\tnumber seats per trains (dfl: %d, min: %d, max: %d)\n" \
              "\t -d num \t\t\ttime (number of ticks) to departure (dfl: %d, min: %d, max: %d)\n" \
              "\t -w num \t\t\tmax random wait time (dfl: %d, min: %d, max: %d)\n" \
              "\t -c num \t\t\tcountdown tick time (dfl: %d, min: %d, max: %d)\n" \
              "\t -h \t\t\tthis help\n" 

basename(argv[0]), npassengers, 1, MAX_PASSENGERS, ntrains, 1, MAX_TRAINS, 
              nseats, 1, MAX_TRAIN_NUM_SEATS, nticks, 1, MAX_DEPARTURE_TIME, 
              maxwait, 0, MAX_WAIT, countdown_tick, 1, MAX_COUNTDOWN_TICK

// TODO point: changes probably required in these data structures
// TODO point: changes probably required in these data structures

/** \brief Passenger data structure */
typedef struct 
{
    char name[MAX_NAME+1];
    int seat; 

    // TODO point: if necessary, add new fields here
    int arrived_to_destination; // 0: in transit; 1: destination reached (voyage ended)
} Passenger;

typedef struct 
{
    int num_passengers;
    Passenger all_passengers[MAX_PASSENGERS];
    Train all_trains[MAX_TRAINS];
    Station station;

    // TODO point: if necessary, add new fields here
} Metro;

Metro metro = NULL;

// TODO point: if necessary, add module variables here

/** \brief verification tests: */
#define check_valid_passenger(id) do { check_valid_passenger_id(id); check_valid_name(metro->all_passengers[id].name, "passenger"); } while(0)
#define check_valid_train(id) do { check_valid_train_id(id); check_valid_name(metro->all_trains[id].name, "train"); } while(0)

void new_passenger(Passenger *passenger); // initializes a new passenger
void random_wait();

// TODO point: changes probably required to this function
// TODO point: changes probably required to this function
void init_simulation(int np, int nt) 
{
    // DO NOT CREATE ACTIVE ENTITIES IN THIS FUNCTION!
    // This function is just to initialize all data structures 

    printf("\e[35;1mInitializing simulation\e[0m\n");
    metro = (Metro *)mem_alloc(sizeof(Metro)); // mem_alloc is a malloc with NULL pointer verification 
    memset(metro, 0, sizeof(Metro));

    metro->num_passengers = np;

    for(int i = 0; i < np; i++)
    {
        new_passenger(&metro->all_passengers[i]);
    }

    init_station(&metro->station);

    for(int i = 0; i < nt; i++)
    {
        init_train(&metro->all_trains[i], nseats, nticks);
    }

    for(int i = 0; i < np; i++) 
    {
        mutex_init(&metro->all_passengers[i].accessRestrict, NULL);
        cond_init(&metro->all_passengers[i].passengerDone, NULL);
    }
}

// TODO point: changes probably required to this function
void term_simulation(int np, int nt) 
{
    // DO NOT WAIT THE TERMINATION OF ACTIVE ENTITIES IN THIS FUNCTION!
    // This function is just to release the allocated resources

    printf("\e[35;1mReleasing   
 resources\e[0m\n");
    for(int i = 0; i < nt; i++)
    {
        term_train(&metro->all_trains[i]);
    }
    term_station(&metro->station);

    free(metro);
    metro = NULL;

    for(int i = 0; i < np; i++)
    {
        mutex_destroy(&metro->all_passengers[i].accessRestrict);
        cond_destroy(&metro->all_passengers[i].passengerDone);
    }
}

// TODO point: changes probably required to this function
void notify_passenger_of_train_arrival(int pass_id) // pass_id is passenger identification
{
    check_valid_passenger(pass_id);

    // TODO point: PUT YOUR PASSENGER DESTINATION ARRIVAL NOTIFICATION CODE HERE:
    metro->all_passengers[pass_id].arrived_to_destination = 1; 
}

void train_life(int id)
{
    // travel time:
    random_wait(); 

    check_valid_train(id);
    printf("\e[32;01mTrain %s (number %d): service starts\e[0m\n", metro->all_trains[id].name, id);
    //NOTE: order of trains in station is undefined
    set_next_train(&metro->station, &metro->all_trains[id]); 

    printf("\e[32;01mTrain %s (number %d): stops at station\e[0m\n", metro->all_trains[id].name, id);
    // wait a fixed time for passengers:
    do
    {
        usleep((useconds_t)countdown_tick);
    } while(!decrement_departure_time(&metro->all_trains[id])); 
    train_departure(&metro->station);

    printf("\e[32;01mTrain %s (number %d): leaves station\e[0m\n", metro->all_trains[id].name, id);
    // travel time:
    random_wait();

    printf("\e[32;01mTrain %s (number %d): arrives destination\e[0m\n", metro->all_trains[id].name, id);
    train_arrived_destination(&metro->all_trains[id]);

    printf("\e[32;01mTrain %s (number %d): service ended\e[0m\n", metro->all_trains[id].name, id);
}

// TODO point: changes probably required to this function
int passenger_try_to_enter_train(int id)
{
    mutex_lock(&metro->all_passengers[id].accessRestrict);
    while(metro->all_passengers[id].arrived_to_destination!=1)
    {
        cond_wait(&metro->all_passengers[id].passengerDone,&metro->all_passengers[id].accessRestrict); 
    }

    int res = 1; // succeeds by default
    check_valid_passenger(id);

    Passenger *passenger = &metro->all_passengers[id];

    printf("\e[34;01mPassenger %s (number %d): enters station and waits train\e[0m\n", passenger->name, id);
    passenger->seat = passenger_enters_station_and_wait_next_train(&metro->station, id);
    // TODO point: PUT YOUR PASSENGER TERMINATION CODE HERE:

    // check_valid_seat(passenger->seat);
    printf("\e[34;01mPassenger %s (number %d): enters train in seat %d\e[0m\n", passenger->name, id, passenger->seat);

    mutex_unlock(&metro->all_passengers[id].accessRestrict);
    return res;
}

// TODO point: changes probably required to this function
void passenger_wait_arrival_to_destination(int id)
{
    check_valid_passenger(id);

    Passenger *passenger = &metro->all_passengers[id];
    // notify_passenger_of_train_arrival(id); // TODO point: to be commented/deleted in concurrent version
    // TODO point: PUT YOUR WAIT CODE FOR DESTINATION ARRIVAL HERE:
    check(passenger->arrived_to_destination, "passenger still in transit");
    printf("\e[34;01mPassenger %s (number %d): arrived to destination\e[0m\n", passenger->name, id);
}

// TODO point: changes probably required to this function
void passenger_life(int id)
{
    random_wait();

    if (passenger_try_to_enter_train(id)) 
    {
        passenger_wait_arrival_to_destination(id);
    }
    else              
    {
        printf("\e[34;01mPassenger %s (number %d): misses all trains (station closed)\e[0m\n", metro->all_passengers[id].name, id);
        //memset(&(metro->all_passengers[id]), 0, sizeof(Passenger)); // TODO point: to be uncommented in concurrent version
    }
}

// TODO point: if necessary, add extra functions here

void *passenger(void *argv) 
{
    int id = (int *)argv;
    while(1) 
    {
        passenger_life(id);
    }
    return NULL;
}

void *train(void *argv) 
{
    int id = (int *)argv;
    while(1) 
    {
        train_life(id);
    }
    return NULL;
}

int main(int argc, char *argv[]) 
{
    int option; 

    // command line processing (no change required) 
    while ((option = getopt(argc, argv, "p:t:s:d:w:c:h")) != -1)
    {
        switch (option) 
        {
            case 'p':
                npassengers = atoi(optarg);
                if (npassengers < 1 || npassengers > MAX_PASSENGERS) 
                {
                    fprintf(stderr, "Invalid number of passengers!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break;
            case 't':
                ntrains = atoi(optarg);
                if (ntrains < 1 || ntrains > MAX_TRAINS) 
                {
                    fprintf(stderr, "Invalid number of trains!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break;
            case 's':
                nseats = atoi(optarg);
                if (nseats < 1 || nseats > MAX_TRAIN_NUM_SEATS) 
                {
                    fprintf(stderr, "Invalid number of seats per train!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break;
            case 'd':
                nticks = atoi(optarg);
                if (nticks < 1 || nticks > MAX_DEPARTURE_TIME) 
                {
                    fprintf(stderr, "Invalid departure time!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break;
            case 'w':
                maxwait = atoi(optarg);
                if (maxwait < 0 || maxwait > MAX_WAIT) 
                {
                    fprintf(stderr, "Invalid max wait time!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break;
            case 'c':
                countdown_tick = atoi(optarg);
                if (countdown_tick < 1 || countdown_tick > MAX_COUNTDOWN_TICK) 
                {
                    fprintf(stderr, "Invalid countdown tick time!\n");
                    fprintf(stderr, "run %s -h\n", argv[0]);
                    return EXIT_FAILURE;
                }
                break; 
            case 'h':
                printf(USAGE);
                return EXIT_SUCCESS;
            default: 
                fprintf(stderr, "Invalid option!\n");
                fprintf(stderr, USAGE);
                return EXIT_FAILURE;
        }
    }

    if ((argc - optind) != 0) 
    {
        fprintf(stderr, "Invalid argument(s)!\n");
        fprintf(stderr, "run %s -h\n", argv[0]);
        return EXIT_FAILURE;
    }

    // start random generator 
    srand(getpid()+time(NULL)); 

    // init simulation 
    init_simulation(npassengers, ntrains);

    pthread_t passenger_thr[npassengers]; 
    for(int i = 0; i < npassengers; i++) 
    {
        int id = i+1;
        thread_create(&passenger_thr[i], NULL, passenger, &id);
    }

    pthread_t train_thr[ntrains];
    for(int i = 0; i < ntrains; i++) 
    {
        int id = i+1;
        thread_create(&train_thr[i], NULL, train, &id);
    }

    for(int i = 0; i < npassengers; i++) 
    {
        thread_join(passenger_thr[i], NULL);
    }

    // TODO point: REPLACE THE FOLLOWING DUMMY CODE WITH code to launch 
    // active entities and code to properly terminate the simulation. 
    // dummy code to show a very simple sequential behavior / 
    set_next_train(&metro->station, &metro->all_trains[0]); 
    for(int i = 0; i < npassengers; i++) 
    {
        passenger_life(i);
    }

    for(int i = 0; i < nticks; i++) 
    {
        train_departure(&metro->station); 
        decrement_departure_time(&metro->all_trains[0]); 
    }
    train_arrived_destination(&metro->all_trains[0]);
    close_station(&metro->station); 
    // end of dummy code 

    // terminate simulation 
    term_simulation(npassengers, ntrains); 

    return EXIT_SUCCESS;
}
    
// IGNORE THE FOLLOWING CODE 
static char *names[] = {"Ana", "Miguel", "Luis", "Joao", "Artur", "Maria", "Luisa", "Mario",
                        "Paulo", "Paula"};

char random_name()
{
    static int names_len = 0;
    if (names_len == 0) 
    {
        for(names_len = 0; names[names_len] != NULL; names_len++)
            ;
    }
    return names[(int)(names_len * (double)rand()/((double)RAND_MAX))];
}

void new_passenger(Passenger *passenger)
{
    strcpy(passenger->name, random_name());
    passenger->arrived_to_destination = 0;
    passenger->seat = INVALID_SEAT;
}

void random_wait()
{
    usleep((useconds_t)(maxwait * (double)rand()/((double)RAND_MAX)));
}