# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/parallella/svn/darts-parallella/DARTS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/parallella/svn/darts-parallella/DARTS/build

# Include any dependencies generated for this target.
include apps/Fanout/CMakeFiles/cd_fanout.dir/depend.make

# Include the progress variables for this target.
include apps/Fanout/CMakeFiles/cd_fanout.dir/progress.make

# Include the compile flags for this target's objects.
include apps/Fanout/CMakeFiles/cd_fanout.dir/flags.make

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o: apps/Fanout/CMakeFiles/cd_fanout.dir/flags.make
apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o: ../apps/Fanout/cd_fanout.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/parallella/svn/darts-parallella/DARTS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o"
	cd /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o -c /home/parallella/svn/darts-parallella/DARTS/apps/Fanout/cd_fanout.cpp

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cd_fanout.dir/cd_fanout.cpp.i"
	cd /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/parallella/svn/darts-parallella/DARTS/apps/Fanout/cd_fanout.cpp > CMakeFiles/cd_fanout.dir/cd_fanout.cpp.i

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cd_fanout.dir/cd_fanout.cpp.s"
	cd /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/parallella/svn/darts-parallella/DARTS/apps/Fanout/cd_fanout.cpp -o CMakeFiles/cd_fanout.dir/cd_fanout.cpp.s

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.requires:
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.requires

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.provides: apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.requires
	$(MAKE) -f apps/Fanout/CMakeFiles/cd_fanout.dir/build.make apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.provides.build
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.provides

apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.provides.build: apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o

# Object files for target cd_fanout
cd_fanout_OBJECTS = \
"CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o"

# External object files for target cd_fanout
cd_fanout_EXTERNAL_OBJECTS =

apps/Fanout/cd_fanout: apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o
apps/Fanout/cd_fanout: apps/Fanout/CMakeFiles/cd_fanout.dir/build.make
apps/Fanout/cd_fanout: src/runtime/libdarts.a
apps/Fanout/cd_fanout: src/common/libcommon.a
apps/Fanout/cd_fanout: src/abstractmachine/libamm.a
apps/Fanout/cd_fanout: /usr/lib/arm-linux-gnueabihf/libhwloc.so
apps/Fanout/cd_fanout: src/threading/libcodelet.a
apps/Fanout/cd_fanout: src/scheduler/libscheduler.a
apps/Fanout/cd_fanout: src/threadlocal/libthreadlocal.a
apps/Fanout/cd_fanout: /usr/lib/libtbb.so
apps/Fanout/cd_fanout: apps/Fanout/CMakeFiles/cd_fanout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable cd_fanout"
	cd /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cd_fanout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/Fanout/CMakeFiles/cd_fanout.dir/build: apps/Fanout/cd_fanout
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/build

apps/Fanout/CMakeFiles/cd_fanout.dir/requires: apps/Fanout/CMakeFiles/cd_fanout.dir/cd_fanout.cpp.o.requires
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/requires

apps/Fanout/CMakeFiles/cd_fanout.dir/clean:
	cd /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout && $(CMAKE_COMMAND) -P CMakeFiles/cd_fanout.dir/cmake_clean.cmake
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/clean

apps/Fanout/CMakeFiles/cd_fanout.dir/depend:
	cd /home/parallella/svn/darts-parallella/DARTS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/parallella/svn/darts-parallella/DARTS /home/parallella/svn/darts-parallella/DARTS/apps/Fanout /home/parallella/svn/darts-parallella/DARTS/build /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout /home/parallella/svn/darts-parallella/DARTS/build/apps/Fanout/CMakeFiles/cd_fanout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Fanout/CMakeFiles/cd_fanout.dir/depend
