
CC = g++-4.7
CFLAGS = -O3

all: randtrack randtrack_global_lock randtrack_tm randtrack_list_lock randtrack_element_lock randtrack_reduction
p0: randtrack
p1: randtrack_global_lock
p2: randtrack_tm
p3: randtrack_list_lock
p4: randtrack_element_lock
p5: randtrack_reduction

LDFLAGS+= -lpthread -fgnu-tm

randtrack: list.h hash.h defs.h randtrack.cc 
	$(CC) $(CFLAGS) randtrack.cc -o randtrack $(LDFLAGS)
randtrack_global_lock: list.h hash.h defs.h randtrack_global_lock.cc 
	$(CC) $(CFLAGS) randtrack_global_lock.cc -o randtrack_global_lock $(LDFLAGS)
randtrack_tm: list.h hash.h defs.h randtrack_tm.cc 
	$(CC) $(CFLAGS) randtrack_tm.cc -o randtrack_tm $(LDFLAGS)
randtrack_list_lock: list.h hash_listlevel_locks.h defs.h randtrack_list_lock.cc 
	$(CC) $(CFLAGS) randtrack_list_lock.cc -o randtrack_list_lock $(LDFLAGS)
randtrack_element_lock: list.h hash.h defs.h randtrack_element_lock.cc 
	$(CC) $(CFLAGS) randtrack_element_lock.cc -o randtrack_element_lock $(LDFLAGS)
randtrack_reduction: list.h hash.h defs.h randtrack_reduction.cc 
	$(CC) $(CFLAGS) randtrack_reduction.cc -o randtrack_reduction $(LDFLAGS)				

clean:
	rm -f *.o randtrack randtrack_global_lock randtrack_tm randtrack_list_lock randtrack_element_lock randtrack_reduction.
