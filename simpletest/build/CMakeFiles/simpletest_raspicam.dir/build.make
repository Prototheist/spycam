# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/git_clones/spycam/simpletest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/git_clones/spycam/simpletest/build

# Include any dependencies generated for this target.
include CMakeFiles/simpletest_raspicam.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simpletest_raspicam.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simpletest_raspicam.dir/flags.make

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o: CMakeFiles/simpletest_raspicam.dir/flags.make
CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o: ../simpletest_raspicam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/git_clones/spycam/simpletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o -c /home/pi/Desktop/git_clones/spycam/simpletest/simpletest_raspicam.cpp

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/git_clones/spycam/simpletest/simpletest_raspicam.cpp > CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.i

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/git_clones/spycam/simpletest/simpletest_raspicam.cpp -o CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.s

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.requires:

.PHONY : CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.requires

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.provides: CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.requires
	$(MAKE) -f CMakeFiles/simpletest_raspicam.dir/build.make CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.provides.build
.PHONY : CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.provides

CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.provides.build: CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o


# Object files for target simpletest_raspicam
simpletest_raspicam_OBJECTS = \
"CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o"

# External object files for target simpletest_raspicam
simpletest_raspicam_EXTERNAL_OBJECTS =

simpletest_raspicam: CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o
simpletest_raspicam: CMakeFiles/simpletest_raspicam.dir/build.make
simpletest_raspicam: /opt/vc/lib/libmmal_core.so
simpletest_raspicam: /opt/vc/lib/libmmal_util.so
simpletest_raspicam: /opt/vc/lib/libmmal.so
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_videostab.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_ts.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_superres.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_stitching.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_ocl.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_gpu.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_contrib.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_photo.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_legacy.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_video.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_objdetect.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_ml.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_calib3d.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_features2d.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_highgui.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_flann.so.2.4.9
simpletest_raspicam: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.9
simpletest_raspicam: CMakeFiles/simpletest_raspicam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/git_clones/spycam/simpletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simpletest_raspicam"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simpletest_raspicam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simpletest_raspicam.dir/build: simpletest_raspicam

.PHONY : CMakeFiles/simpletest_raspicam.dir/build

CMakeFiles/simpletest_raspicam.dir/requires: CMakeFiles/simpletest_raspicam.dir/simpletest_raspicam.cpp.o.requires

.PHONY : CMakeFiles/simpletest_raspicam.dir/requires

CMakeFiles/simpletest_raspicam.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simpletest_raspicam.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simpletest_raspicam.dir/clean

CMakeFiles/simpletest_raspicam.dir/depend:
	cd /home/pi/Desktop/git_clones/spycam/simpletest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/git_clones/spycam/simpletest /home/pi/Desktop/git_clones/spycam/simpletest /home/pi/Desktop/git_clones/spycam/simpletest/build /home/pi/Desktop/git_clones/spycam/simpletest/build /home/pi/Desktop/git_clones/spycam/simpletest/build/CMakeFiles/simpletest_raspicam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simpletest_raspicam.dir/depend

