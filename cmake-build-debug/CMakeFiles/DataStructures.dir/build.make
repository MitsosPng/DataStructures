# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Programming\C++\DataStructuresProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Programming\C++\DataStructuresProject\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/DataStructures.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DataStructures.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DataStructures.dir/flags.make

CMakeFiles/DataStructures.dir/main.cpp.obj: CMakeFiles/DataStructures.dir/flags.make
CMakeFiles/DataStructures.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Programming\C++\DataStructuresProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DataStructures.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\DataStructures.dir\main.cpp.obj -c D:\Programming\C++\DataStructuresProject\main.cpp

CMakeFiles/DataStructures.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DataStructures.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Programming\C++\DataStructuresProject\main.cpp > CMakeFiles\DataStructures.dir\main.cpp.i

CMakeFiles/DataStructures.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DataStructures.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Programming\C++\DataStructuresProject\main.cpp -o CMakeFiles\DataStructures.dir\main.cpp.s

# Object files for target DataStructures
DataStructures_OBJECTS = \
"CMakeFiles/DataStructures.dir/main.cpp.obj"

# External object files for target DataStructures
DataStructures_EXTERNAL_OBJECTS =

DataStructures.exe: CMakeFiles/DataStructures.dir/main.cpp.obj
DataStructures.exe: CMakeFiles/DataStructures.dir/build.make
DataStructures.exe: CMakeFiles/DataStructures.dir/linklibs.rsp
DataStructures.exe: CMakeFiles/DataStructures.dir/objects1.rsp
DataStructures.exe: CMakeFiles/DataStructures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Programming\C++\DataStructuresProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DataStructures.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DataStructures.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DataStructures.dir/build: DataStructures.exe

.PHONY : CMakeFiles/DataStructures.dir/build

CMakeFiles/DataStructures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\DataStructures.dir\cmake_clean.cmake
.PHONY : CMakeFiles/DataStructures.dir/clean

CMakeFiles/DataStructures.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Programming\C++\DataStructuresProject D:\Programming\C++\DataStructuresProject D:\Programming\C++\DataStructuresProject\cmake-build-debug D:\Programming\C++\DataStructuresProject\cmake-build-debug D:\Programming\C++\DataStructuresProject\cmake-build-debug\CMakeFiles\DataStructures.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DataStructures.dir/depend

