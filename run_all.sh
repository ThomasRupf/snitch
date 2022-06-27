#!/bin/bash

#usage ./run_all.sh <tag>

FAILED=""

for x in $(echo "$(< /dev/stdin)")
do
    printf "============================ RUNNING %s =============================\n" $x
    ./run_rtl.sh $x $1
    if [ "$?x" != "0x" ]; then
        FAILED="$x, $FAILED"
    fi
done

printf "===============================================================\n"
printf "============================ DONE =============================\n"
printf "===============================================================\n"
echo "TAG = $1"
echo "FAILED = $FAILED"