#!/bin/bash

ITERS=3
SLEEP=60

for i in $(seq 1 $ITERS)
do
	echo "Executing iteration ${i} of ${ITERS}..."
	ab -n 10000 -c 10 -g g_${i}.csv -e e_${i}.csv http://192.168.13.31/swap 2>&1 | tee output_${i}
	echo "Sleeping for ${SLEEP} seconds..."
	sleep $SLEEP
done
