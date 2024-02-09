# To compile all programs, run:
#   make
#
# AED, UA, 2023

CC = gcc
CFLAGS += -g -Wall -Wextra
CPPFLAGS += -MMD

TARGETS = example1 example2

all: $(TARGETS)

example1: example1.o Digraph.o

example2: example2.o Digraph.o IntegersStack.o instrumentation.o

leak1: example1
	valgrind --leak-check=full ./example1

leak1_s: example1
	valgrind --leak-check=full --track-origins=yes -s ./example1

leak1_1: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DAG_1.txt

leak1_2: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DAG_2.txt

leak1_3: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DAG_3.txt

leak1_4: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DAG_4.txt

leak1_5: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DG_1.txt

leak1_6: example1
	valgrind --leak-check=full ./example1 GRAFOS_ORIENTADOS/DG_2.txt

leak1_7: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWmediumDG.txt

leak1_8: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWmediumEWD.txt
#erro

leak1_9: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWmediumG.txt 
#erro

leak1_10: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWtinyDAG.txt 

leak1_11: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWtinyDG.txt

leak1_12: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWtinyEWD.txt
#erro

leak1_13: example1
	valgrind --leak-check=full ./example1 GRAPHS/SWtinyG.txt
#erro

#

leak2: example2
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DAG_1.txt

leak2_1: example2
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DAG_2.txt

leak2_2: example2 
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DAG_3.txt

leak2_3: example2	
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DAG_4.txt

leak2_4: example2	
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DG_1.txt

leak2_5: example2	
	valgrind --leak-check=full ./example2 GRAFOS_ORIENTADOS/DG_2.txt

leak2_6: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWmediumDG.txt	
	
leak2_7: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWmediumEWD.txt

leak2_8: example2
	valgrind --leak-check=full ./example2 GRAPHS/SWmediumG.txt

leak2_9: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWtinyDAG.txt

leak2_10: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWtinyDG.txt

leak2_11: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWtinyEWD.txt

leak2_12: example2	
	valgrind --leak-check=full ./example2 GRAPHS/SWtinyG.txt	

# Include dependencies (generated with gcc -MMD)
-include *.d


# Cleanup
clean:
	rm -f *.o *.d
	rm -f $(TARGETS)

