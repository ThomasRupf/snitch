#!/bin/bash

#usage ./run_all.sh <binary-name> <tag>

if [ "$2x" != "x" ]; then
    FOLDER=$2
else
    FOLDER="newest"
fi

EXITCODE=0

cd ./hw/system/snitch_cluster/
if [ -f ./sw/build/SSRInference/$1 ]; then 
    ./bin/snitch_cluster.vlt ./sw/build/SSRInference/$1
    if [ "$?x" != "0x" ]; then 
        EXITCODE=$?
    fi
    make traces
    mkdir -p ./traces/$FOLDER/
    cp ./logs/trace_hart_00000000.txt ./traces/$FOLDER/$1_rtltrace.s
    /repo/util/trace/annotate.py -o ./traces/$FOLDER/$1_rtltrace_ann.s ./sw/build/SSRInference/$1 ./logs/trace_hart_00000000.txt
else 
    echo "***ERROR***: file not found: $1"
fi
cd ../../..

return $EXITCODE 2>/dev/null
exit $EXITCODE