# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Volumes/Workspace/apache-datasketches-cpp/venv/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Volumes/Workspace/apache-datasketches-cpp/venv/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Workspace/apache-datasketches-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7

# Include any dependencies generated for this target.
include hll/test/CMakeFiles/hll_test.dir/depend.make

# Include the progress variables for this target.
include hll/test/CMakeFiles/hll_test.dir/progress.make

# Include the compile flags for this target's objects.
include hll/test/CMakeFiles/hll_test.dir/flags.make

hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o: ../../hll/test/AuxHashMapTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/AuxHashMapTest.cpp

hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/AuxHashMapTest.cpp > CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/AuxHashMapTest.cpp -o CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o: ../../hll/test/CouponHashSetTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponHashSetTest.cpp

hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponHashSetTest.cpp > CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponHashSetTest.cpp -o CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.o: ../../hll/test/CouponListTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/CouponListTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponListTest.cpp

hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/CouponListTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponListTest.cpp > CMakeFiles/hll_test.dir/CouponListTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/CouponListTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/CouponListTest.cpp -o CMakeFiles/hll_test.dir/CouponListTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o: ../../hll/test/CrossCountingTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/CrossCountingTest.cpp

hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/CrossCountingTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/CrossCountingTest.cpp > CMakeFiles/hll_test.dir/CrossCountingTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/CrossCountingTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/CrossCountingTest.cpp -o CMakeFiles/hll_test.dir/CrossCountingTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.o: ../../hll/test/HllArrayTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/HllArrayTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllArrayTest.cpp

hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/HllArrayTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllArrayTest.cpp > CMakeFiles/hll_test.dir/HllArrayTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/HllArrayTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllArrayTest.cpp -o CMakeFiles/hll_test.dir/HllArrayTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.o: ../../hll/test/HllSketchTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/HllSketchTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllSketchTest.cpp

hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/HllSketchTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllSketchTest.cpp > CMakeFiles/hll_test.dir/HllSketchTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/HllSketchTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllSketchTest.cpp -o CMakeFiles/hll_test.dir/HllSketchTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.o: ../../hll/test/HllUnionTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/HllUnionTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllUnionTest.cpp

hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/HllUnionTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllUnionTest.cpp > CMakeFiles/hll_test.dir/HllUnionTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/HllUnionTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/HllUnionTest.cpp -o CMakeFiles/hll_test.dir/HllUnionTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.o: ../../hll/test/TablesTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/TablesTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/TablesTest.cpp

hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/TablesTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/TablesTest.cpp > CMakeFiles/hll_test.dir/TablesTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/TablesTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/TablesTest.cpp -o CMakeFiles/hll_test.dir/TablesTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o: ../../hll/test/ToFromByteArrayTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/ToFromByteArrayTest.cpp

hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/ToFromByteArrayTest.cpp > CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/ToFromByteArrayTest.cpp -o CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.s

hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o: hll/test/CMakeFiles/hll_test.dir/flags.make
hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o: ../../hll/test/IsomorphicTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o -c /Volumes/Workspace/apache-datasketches-cpp/hll/test/IsomorphicTest.cpp

hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hll_test.dir/IsomorphicTest.cpp.i"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Volumes/Workspace/apache-datasketches-cpp/hll/test/IsomorphicTest.cpp > CMakeFiles/hll_test.dir/IsomorphicTest.cpp.i

hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hll_test.dir/IsomorphicTest.cpp.s"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Volumes/Workspace/apache-datasketches-cpp/hll/test/IsomorphicTest.cpp -o CMakeFiles/hll_test.dir/IsomorphicTest.cpp.s

# Object files for target hll_test
hll_test_OBJECTS = \
"CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o" \
"CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o" \
"CMakeFiles/hll_test.dir/CouponListTest.cpp.o" \
"CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o" \
"CMakeFiles/hll_test.dir/HllArrayTest.cpp.o" \
"CMakeFiles/hll_test.dir/HllSketchTest.cpp.o" \
"CMakeFiles/hll_test.dir/HllUnionTest.cpp.o" \
"CMakeFiles/hll_test.dir/TablesTest.cpp.o" \
"CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o" \
"CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o"

# External object files for target hll_test
hll_test_EXTERNAL_OBJECTS = \
"/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/common/test/CMakeFiles/common_test.dir/catch_runner.cpp.o" \
"/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/common/test/CMakeFiles/common_test.dir/test_allocator.cpp.o"

hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/AuxHashMapTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/CouponHashSetTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/CouponListTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/CrossCountingTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/HllArrayTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/HllSketchTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/HllUnionTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/TablesTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/ToFromByteArrayTest.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/IsomorphicTest.cpp.o
hll/test/hll_test: common/test/CMakeFiles/common_test.dir/catch_runner.cpp.o
hll/test/hll_test: common/test/CMakeFiles/common_test.dir/test_allocator.cpp.o
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/build.make
hll/test/hll_test: hll/test/CMakeFiles/hll_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable hll_test"
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hll_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hll/test/CMakeFiles/hll_test.dir/build: hll/test/hll_test

.PHONY : hll/test/CMakeFiles/hll_test.dir/build

hll/test/CMakeFiles/hll_test.dir/clean:
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test && $(CMAKE_COMMAND) -P CMakeFiles/hll_test.dir/cmake_clean.cmake
.PHONY : hll/test/CMakeFiles/hll_test.dir/clean

hll/test/CMakeFiles/hll_test.dir/depend:
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Workspace/apache-datasketches-cpp /Volumes/Workspace/apache-datasketches-cpp/hll/test /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7 /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.15-x86_64-3.7/hll/test/CMakeFiles/hll_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hll/test/CMakeFiles/hll_test.dir/depend
