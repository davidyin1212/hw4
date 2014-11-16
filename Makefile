
CC = g++-4.7
CFLAGS = -O3

all: randtrack 

LDFLAGS+= -lpthread

randtrack: list.h hash.h defs.h randtrack.cc 
	$(CC) $(CFLAGS) randtrack.cc -o randtrack $(LDFLAGS)


clean:
	rm -f *.o randtrack randtrack_global_lock randtrack_tm randtrack_list_lock
