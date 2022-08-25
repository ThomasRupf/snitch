#!/bin/bash

#usage ./run_all.sh <binary-name> <tag> <no-zip>

if [ "$2x" != "x" ]; then
    FOLDER=$2
else
    FOLDER="newest"
fi

EXITCODE=0

cd ./hw/system/snitch_cluster/
if [ -f ./sw/build/SSRInference/$1 ]; then 
    ./bin/snitch_cluster.vlt ./sw/build/SSRInference/$1
    EXITCODE=$?
    make traces
    mkdir -p ./traces/$FOLDER
    cp ./logs/trace_hart_00000000.txt ./$1_rtltrace.s
    if [ "$3x" == "x" ]; then
        tar -cf ./traces/$FOLDER/$1_rtltrace.tar ./$1_rtltrace.s
    else 
        cp ./$1_rtltrace.s ./traces/$FOLDER/$1_rtltrace.s
        #/repo/util/trace/annotate.py -o ./traces/$FOLDER/$1_rtltrace_ann.s ./sw/build/SSRInference/$1 ./logs/trace_hart_00000000.txt
    fi
    rm -f ./$1_rtltrace.s
else 
    echo "***ERROR***: file not found: $1"
fi
cd ../../..

return $EXITCODE 2>/dev/null
exit $EXITCODE