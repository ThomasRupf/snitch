# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/852/bin/cmake

# The command to remove a file.
RM = /snap/cmake/852/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build

# Include any dependencies generated for this target.
include benchmark/CMakeFiles/benchmark-matmul-all.dir/depend.make

# Include the progress variables for this target.
include benchmark/CMakeFiles/benchmark-matmul-all.dir/progress.make

# Include the compile flags for this target's objects.
include benchmark/CMakeFiles/benchmark-matmul-all.dir/flags.make

benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o: benchmark/CMakeFiles/benchmark-matmul-all.dir/flags.make
benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o: /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/src/matmul/main_all.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o"
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && /home/thomas/Documents/eth/ba/code/all/install/bin/riscv32-unknown-elf-clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o -c /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/src/matmul/main_all.c

benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.i"
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && /home/thomas/Documents/eth/ba/code/all/install/bin/riscv32-unknown-elf-clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/src/matmul/main_all.c > CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.i

benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.s"
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && /home/thomas/Documents/eth/ba/code/all/install/bin/riscv32-unknown-elf-clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark/src/matmul/main_all.c -o CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.s

# Object files for target benchmark-matmul-all
benchmark__matmul__all_OBJECTS = \
"CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o"

# External object files for target benchmark-matmul-all
benchmark__matmul__all_EXTERNAL_OBJECTS =

benchmark/benchmark-matmul-all: benchmark/CMakeFiles/benchmark-matmul-all.dir/src/matmul/main_all.c.o
benchmark/benchmark-matmul-all: benchmark/CMakeFiles/benchmark-matmul-all.dir/build.make
benchmark/benchmark-matmul-all: snRuntime/libsnRuntime-cluster.a
benchmark/benchmark-matmul-all: benchmark/libbenchmark-matmul.a
benchmark/benchmark-matmul-all: snRuntime/libsnRuntime-cluster.a
benchmark/benchmark-matmul-all: benchmark/libbenchmark.a
benchmark/benchmark-matmul-all: benchmark/CMakeFiles/benchmark-matmul-all.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable benchmark-matmul-all"
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark-matmul-all.dir/link.txt --verbose=$(VERBOSE)
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && llvm-objdump --mcpu=snitch -dhS /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark/benchmark-matmul-all > /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark/benchmark-matmul-all.s

# Rule to build all files generated by this target.
benchmark/CMakeFiles/benchmark-matmul-all.dir/build: benchmark/benchmark-matmul-all

.PHONY : benchmark/CMakeFiles/benchmark-matmul-all.dir/build

benchmark/CMakeFiles/benchmark-matmul-all.dir/clean:
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark && $(CMAKE_COMMAND) -P CMakeFiles/benchmark-matmul-all.dir/cmake_clean.cmake
.PHONY : benchmark/CMakeFiles/benchmark-matmul-all.dir/clean

benchmark/CMakeFiles/benchmark-matmul-all.dir/depend:
	cd /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw /home/thomas/Documents/eth/ba/code/all/snitch/sw/benchmark /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark /home/thomas/Documents/eth/ba/code/all/snitch/hw/system/snitch_cluster/sw/build/benchmark/CMakeFiles/benchmark-matmul-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmark/CMakeFiles/benchmark-matmul-all.dir/depend

