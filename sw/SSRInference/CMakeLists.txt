cmake_minimum_required(VERSION 3.13)

# Allow snRuntime to be built as a standalone library.
if (CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)
    set(CMAKE_TOOLCHAIN_FILE toolchain-llvm CACHE STRING "Toolchain to use")

    project(SSRInference LANGUAGES C ASM)
    include(SnitchUtilities)

    add_compile_options(-O3 -g -ffunction-sections)

    # Build the runtime.
    add_subdirectory(../snRuntime snRuntime)
endif()

# add_compile_options("SHELL:-mllvm -ssr-aggressive-reassociate") <- for some reason cmake cannot pass flags to llvm backend (=llc?) probably because it compiles and links seperately ==> these flags are currently hardcoded
# add_compile_options("SHELL:-mllvm -ssr-bubble-streams=8") 
# add_compile_options("SHELL:-mllvm -post-RA-scheduler")
# add_compile_options("SHELL:-mllvm -break-anti-dependencies=all")

list(APPEND SSRFlags "SHELL:-mllvm -infer-ssr")

include_directories(include)
include_directories(${SNRUNTIME_INCLUDE_DIRS})

add_library(linalg src/matmul.c src/summat.c src/scalarprod.c)
add_library(linalg-ssr src/matmul.c src/summat.c src/scalarprod.c)

add_library(other src/various.c src/conflict.c src/reverse_conflict.c)
add_library(other-ssr src/various.c src/conflict.c src/reverse_conflict.c)

add_library(benchmarkutil src/benchmark.c)
add_library(benchmarkutil-ssr src/benchmark.c)

list(APPEND Libs linalg other benchmarkutil)
list(APPEND SSRLibs linalg-ssr other-ssr benchmarkutil-ssr)

foreach(lib IN LISTS SSRLibs)
    foreach(flag IN LISTS SSRFlags)
        target_compile_options(${lib} PUBLIC "${flag}")
    endforeach()
endforeach()

# Tests
enable_testing()
set(SNITCH_TEST_PREFIX SSRInference-)

list(APPEND TestNames test-sp test-access test-size test-various test-alias test-conflict test-reverse-conflict test-mat test-gemm test-2mm test-3mm test-2mm-ssrfriendly test-3mm-ssrfriendly)
list(APPEND TestFiles tests/test_sp.c tests/test_access.c tests/test_size.c tests/test_various.c tests/test_aliasing.c tests/test_conflict.c tests/test_reverse_conflict.c tests/test_mat.c tests/gemm.c tests/2mm.c tests/3mm.c tests/2mm_ssrfriendly.c tests/3mm_ssrfriendly.c)

foreach(test file IN ZIP_LISTS TestNames TestFiles)
    #no inference
    add_snitch_executable(${test} ${file})
    add_snitch_test_executable(${test} ${file})
    add_snitch_test_args(${test} ${test} --no-opt-llvm --configuration ${CMAKE_CURRENT_SOURCE_DIR}/../banshee/config/snitch_cluster.yaml)
    foreach(lib IN LISTS Libs)
        target_link_libraries(${test} ${lib})
        target_link_libraries(test-${SNITCH_TEST_PREFIX}${test} ${lib})
    endforeach()
    
    #inference
    add_snitch_executable(${test}-ssr ${file})
    add_snitch_test_executable(${test}-ssr ${file})
    foreach(flag IN LISTS SSRFlags)
        target_compile_options(${test}-ssr PUBLIC "${flag}")
        target_compile_options(test-${SNITCH_TEST_PREFIX}${test}-ssr PUBLIC "${flag}")
    endforeach()
    add_snitch_test_args(${test}-ssr ${test}-ssr --no-opt-llvm --configuration ${CMAKE_CURRENT_SOURCE_DIR}/../banshee/config/snitch_cluster.yaml)
    foreach(lib IN LISTS SSRLibs)
        target_link_libraries(${test}-ssr ${lib})
        target_link_libraries(test-${SNITCH_TEST_PREFIX}${test}-ssr ${lib})
    endforeach()
endforeach()

#Benchmarks
list(APPEND BenchNames gemm 2mm 2mm-ssrfriendly 3mm 3mm-ssrfriendly sp mm sp-unroll16)
list(APPEND BenchFiles tests/gemm.c tests/2mm.c tests/2mm_ssrfriendly.c tests/3mm.c tests/3mm_ssrfriendly.c tests/bench_sp.c tests/bench_matmul.c tests/bench_sp_unroll)

list(APPEND Datasets MINI_DATASET SMALL_DATASET)
list(APPEND Modifiers "" IS_RESTRICTED)

foreach(name file IN ZIP_LISTS BenchNames BenchFiles)
    foreach(dataset IN LISTS Datasets)
        foreach(restrict IN LISTS Modifiers)
            set(benchname bench-${dataset}-${restrict}-${name})
            #base line
            add_snitch_executable(${benchname} ${file})
            target_compile_definitions(${benchname} PUBLIC ${dataset} ${restrict})
            foreach(lib IN LISTS Libs)
                target_link_libraries(${benchname} ${lib})
            endforeach()
            #ssr inference
            add_snitch_executable(${benchname}-ssr ${file})
            target_compile_definitions(${benchname}-ssr PUBLIC ${dataset} ${restrict})
            foreach(flag IN LISTS SSRFlags)
                target_compile_options(${benchname}-ssr PUBLIC "${flag}")
            endforeach()
            foreach(lib IN LISTS SSRLibs)
                target_link_libraries(${benchname}-ssr ${lib})
            endforeach()
        endforeach()
    endforeach()
endforeach()