#!/bin/bash
sort -n rt1.out > rt1.outs
sort -n rt2.out > rt2.outs
diff rt1.outs rt2.outs