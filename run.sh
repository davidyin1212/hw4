#!/bin/bash
make
/usr/bin/time ./randtrack 1 100 | grep elapsed
/usr/bin/time ./randtrack 2 100 | grep elapsed
/usr/bin/time ./randtrack 4 100 | grep elapsed
/usr/bin/time ./randtrack_global_lock 1 100 | grep elapsed
/usr/bin/time ./randtrack_global_lock 2 100 | grep elapsed
/usr/bin/time ./randtrack_global_lock 4 100 | grep elapsed
/usr/bin/time ./randtrack_tm 1 100 | grep elapsed
/usr/bin/time ./randtrack_tm 2 100 | grep elapsed
/usr/bin/time ./randtrack_tm 4 100 | grep elapsed
/usr/bin/time ./randtrack_list_lock 1 100 | grep elapsed
/usr/bin/time ./randtrack_list_lock 2 100 | grep elapsed
/usr/bin/time ./randtrack_list_lock 4 100 | grep elapsed
/usr/bin/time ./randtrack_element_lock 1 100 | grep elapsed
/usr/bin/time ./randtrack_element_lock 2 100 | grep elapsed
/usr/bin/time ./randtrack_element_lock 4 100 | grep elapsed
/usr/bin/time ./randtrack_reduction 1 100 | grep elapsed
/usr/bin/time ./randtrack_reduction 2 100 | grep elapsed
/usr/bin/time ./randtrack_reduction 4 100 | grep elapsed