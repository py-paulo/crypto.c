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
CMAKE_COMMAND = /snap/clion/152/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/152/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ffanon/CLionProjects/crypto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ffanon/CLionProjects/crypto/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/crypto.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/crypto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/crypto.dir/flags.make

CMakeFiles/crypto.dir/main.c.o: CMakeFiles/crypto.dir/flags.make
CMakeFiles/crypto.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ffanon/CLionProjects/crypto/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/crypto.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypto.dir/main.c.o -c /home/ffanon/CLionProjects/crypto/main.c

CMakeFiles/crypto.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypto.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ffanon/CLionProjects/crypto/main.c > CMakeFiles/crypto.dir/main.c.i

CMakeFiles/crypto.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypto.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ffanon/CLionProjects/crypto/main.c -o CMakeFiles/crypto.dir/main.c.s

# Object files for target crypto
crypto_OBJECTS = \
"CMakeFiles/crypto.dir/main.c.o"

# External object files for target crypto
crypto_EXTERNAL_OBJECTS =

crypto: CMakeFiles/crypto.dir/main.c.o
crypto: CMakeFiles/crypto.dir/build.make
crypto: CMakeFiles/crypto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ffanon/CLionProjects/crypto/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable crypto"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crypto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/crypto.dir/build: crypto

.PHONY : CMakeFiles/crypto.dir/build

CMakeFiles/crypto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/crypto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/crypto.dir/clean

CMakeFiles/crypto.dir/depend:
	cd /home/ffanon/CLionProjects/crypto/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ffanon/CLionProjects/crypto /home/ffanon/CLionProjects/crypto /home/ffanon/CLionProjects/crypto/cmake-build-debug /home/ffanon/CLionProjects/crypto/cmake-build-debug /home/ffanon/CLionProjects/crypto/cmake-build-debug/CMakeFiles/crypto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/crypto.dir/depend

