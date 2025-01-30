CC = g++
CXXFLAGS = -Wall -ggdb -pthread

LDFLAGS = -pthread -lm

.PHONY:	all clean cleanall

TARGETS = fork1 fork2 fork3 fork4 child sig1 sig2 ex1 ex2

all:	$(TARGETS) clean

$(TARGETS):	%: %.o delays.o process.o utils.o
		g++ -o $@ $^ $(LDFLAGS)

delay.o:	%.o:	%.h

utils.o process.o:	%.o:	%.h dbc.h utils.h

clean:
		rm -f *.o *~

cleanall:	clean
		rm -f $(TARGETS)

