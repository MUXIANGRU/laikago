# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/unitree/laikago_sdk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/unitree/laikago_sdk/build

# Include any dependencies generated for this target.
include CMakeFiles/sdk_lcm_server_high.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sdk_lcm_server_high.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sdk_lcm_server_high.dir/flags.make

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o: CMakeFiles/sdk_lcm_server_high.dir/flags.make
CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o: ../examples/one_pc/multi_process/server/high_lcm_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/unitree/laikago_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o -c /home/unitree/laikago_sdk/examples/one_pc/multi_process/server/high_lcm_server.cpp

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/unitree/laikago_sdk/examples/one_pc/multi_process/server/high_lcm_server.cpp > CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.i

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/unitree/laikago_sdk/examples/one_pc/multi_process/server/high_lcm_server.cpp -o CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.s

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.requires:

.PHONY : CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.requires

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.provides: CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.requires
	$(MAKE) -f CMakeFiles/sdk_lcm_server_high.dir/build.make CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.provides.build
.PHONY : CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.provides

CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.provides.build: CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o


# Object files for target sdk_lcm_server_high
sdk_lcm_server_high_OBJECTS = \
"CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o"

# External object files for target sdk_lcm_server_high
sdk_lcm_server_high_EXTERNAL_OBJECTS =

sdk_lcm_server_high: CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o
sdk_lcm_server_high: CMakeFiles/sdk_lcm_server_high.dir/build.make
sdk_lcm_server_high: CMakeFiles/sdk_lcm_server_high.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/unitree/laikago_sdk/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sdk_lcm_server_high"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdk_lcm_server_high.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sdk_lcm_server_high.dir/build: sdk_lcm_server_high

.PHONY : CMakeFiles/sdk_lcm_server_high.dir/build

CMakeFiles/sdk_lcm_server_high.dir/requires: CMakeFiles/sdk_lcm_server_high.dir/examples/one_pc/multi_process/server/high_lcm_server.cpp.o.requires

.PHONY : CMakeFiles/sdk_lcm_server_high.dir/requires

CMakeFiles/sdk_lcm_server_high.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sdk_lcm_server_high.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sdk_lcm_server_high.dir/clean

CMakeFiles/sdk_lcm_server_high.dir/depend:
	cd /home/unitree/laikago_sdk/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/unitree/laikago_sdk /home/unitree/laikago_sdk /home/unitree/laikago_sdk/build /home/unitree/laikago_sdk/build /home/unitree/laikago_sdk/build/CMakeFiles/sdk_lcm_server_high.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sdk_lcm_server_high.dir/depend

