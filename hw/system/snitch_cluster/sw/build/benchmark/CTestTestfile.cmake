# CMake generated Testfile for 
# Source directory: /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark
# Build directory: /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rtl-benchmark-matmul-all "/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/../bin/snitch_cluster.vlt" "/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark/benchmark-matmul-all")
set_tests_properties(rtl-benchmark-matmul-all PROPERTIES  TIMEOUT "1800" _BACKTRACE_TRIPLES "/home/thomas/Documents/eth/ba/code/all/snitch/sw/cmake/SnitchUtilities.cmake;85;add_test;/home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/CMakeLists.txt;43;add_snitch_raw_test_rtl;/home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/CMakeLists.txt;0;")
