# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /Users/andy/miniconda3/bin/cmake

# The command to remove a file.
RM = /Users/andy/miniconda3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/Workspace/apache-datasketches-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7

# Include any dependencies generated for this target.
include CMakeFiles/datasketches.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/datasketches.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/datasketches.dir/flags.make

# Object files for target datasketches
datasketches_OBJECTS =

# External object files for target datasketches
datasketches_EXTERNAL_OBJECTS =

../lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib: CMakeFiles/datasketches.dir/build.make
../lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib: CMakeFiles/datasketches.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared library ../lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/datasketches.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/datasketches.dir/build: ../lib.macosx-10.9-x86_64-3.7/libdatasketches.dylib

.PHONY : CMakeFiles/datasketches.dir/build

CMakeFiles/datasketches.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/datasketches.dir/cmake_clean.cmake
.PHONY : CMakeFiles/datasketches.dir/clean

CMakeFiles/datasketches.dir/depend:
	cd /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/Workspace/apache-datasketches-cpp /Volumes/Workspace/apache-datasketches-cpp /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7 /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7 /Volumes/Workspace/apache-datasketches-cpp/build/temp.macosx-10.9-x86_64-3.7/CMakeFiles/datasketches.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/datasketches.dir/depend
