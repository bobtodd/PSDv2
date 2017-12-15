# makefile for the project Phylogenetic Software Development Tutorial (v2)

IDIR=/usr/local/include
CC=g++
CFLAGS=-I$(IDIR)
DEPS = node.hpp
OBJ = main.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

testmake: $(OBJ)
	g++ -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o *~
