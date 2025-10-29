CXX = g++
CPPFLAGS = -Wall -Wfatal-errors -Wno-write-strings -Wno-unused-function -g -pthread -Iinclude -DEXCEPT
LDFLAGS = -LLib -lsoconcur

OBJS = station.o metro.o train.o

TARGET = metro

PHONY: all clean cleanall

all: $(TARGET)

metro: $(OBJS)
	$(CXX) $(CPPFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -fv *.o core

cleanall: clean
	rm -f $(TARGET) 