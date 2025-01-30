.PHONY: all clean cleanall

CC = g++
CXXFLAGS = -Wall -Wfatal-errors -ggdb -pthread

LDFLAGS = -pthread -lm

TARGET = main

all:	$(TARGET)

$(TARGET):	main.o linked-list.o 
		g++ -o $@ $^ $(LDFLAGS)

$(TARGET):	linked-list.h

clean:
		rm -f *.o *~

cleanall:	clean
		rm -f $(TARGET)

