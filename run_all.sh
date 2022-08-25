#!/bin/bash

#usage ./run_all.sh <tag> <no-zip>

FAILED=""

for x in $(echo "$(< /dev/stdin)")
do
    printf "============================ RUNNING %s =============================\n" $x
    ./run_rtl.sh $x $1 $2
    if [ "$?x" != "0x" ]; then
        FAILED="$x, $FAILED"
    fi
    printf "============================ DONE WITH %s =============================\n" $x
done

wait

printf "===============================================================\n"
printf "============================ DONE =============================\n"
printf "===============================================================\n"
echo "TAG = $1"
echo "FAILED = $FAILED"