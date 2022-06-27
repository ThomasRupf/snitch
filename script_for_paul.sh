#!/bin/bash -xe

name=$(date +"%Y_%m_%d__%H_%M_%S")

# run all SMALL_DATASET benchmarks (with and without inference)
./run_all.sh "${name}_small_benchs" < ./rtl_small_both.txt