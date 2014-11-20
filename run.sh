#!/bin/bash
make
/usr/bin/time ./randtrack 1 50 | grep elapsed
/usr/bin/time ./randtrack 2 50 | grep elapsed
/usr/bin/time ./randtrack 4 50 | grep elapsed
/usr/bin/time ./randtrack_global_lock 1 50 | grep elapsed
/usr/bin/time ./randtrack_global_lock 2 50 | grep elapsed
/usr/bin/time ./randtrack_global_lock 4 50 | grep elapsed
/usr/bin/time ./randtrack_tm 1 50 | grep elapsed
/usr/bin/time ./randtrack_tm 2 50 | grep elapsed
/usr/bin/time ./randtrack_tm 4 50 | grep elapsed
/usr/bin/time ./randtrack_list_lock 1 50 | grep elapsed
/usr/bin/time ./randtrack_list_lock 2 50 | grep elapsed
/usr/bin/time ./randtrack_list_lock 4 50 | grep elapsed
/usr/bin/time ./randtrack_element_lock 1 50 | grep elapsed
/usr/bin/time ./randtrack_element_lock 2 50 | grep elapsed
/usr/bin/time ./randtrack_element_lock 4 50 | grep elapsed
/usr/bin/time ./randtrack_reduction 1 50 | grep elapsed
/usr/bin/time ./randtrack_reduction 2 50 | grep elapsed
/usr/bin/time ./randtrack_reduction 4 50 | grep elapsed