# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "/Users/badeand/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/badeand/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/193.6015.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/badeand/dev/labyrinth/software/gamecontroller/arduino

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Z_DUMMY_TARGET.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Z_DUMMY_TARGET.dir/flags.make

CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o: ../src/Axis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Axis.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Axis.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Axis.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o: ../src/BNOReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/BNOReader.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/BNOReader.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/BNOReader.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o: ../src/Joystick.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Joystick.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Joystick.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Joystick.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o: ../src/SSD1306Display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/SSD1306Display.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/SSD1306Display.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/SSD1306Display.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o: ../src/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Util.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Util.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/Util.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.s

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o: CMakeFiles/Z_DUMMY_TARGET.dir/flags.make
CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o -c /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/main.cpp

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/main.cpp > CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.i

CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s"
	/Users/badeand/.platformio/packages/toolchain-xtensa32/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/src/main.cpp -o CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.s

# Object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_OBJECTS = \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o" \
"CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o"

# External object files for target Z_DUMMY_TARGET
Z_DUMMY_TARGET_EXTERNAL_OBJECTS =

Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/Axis.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/BNOReader.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/Joystick.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/SSD1306Display.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/Util.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/src/main.cpp.o
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/build.make
Z_DUMMY_TARGET: CMakeFiles/Z_DUMMY_TARGET.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Z_DUMMY_TARGET"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Z_DUMMY_TARGET.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Z_DUMMY_TARGET.dir/build: Z_DUMMY_TARGET

.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/build

CMakeFiles/Z_DUMMY_TARGET.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Z_DUMMY_TARGET.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/clean

CMakeFiles/Z_DUMMY_TARGET.dir/depend:
	cd /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/badeand/dev/labyrinth/software/gamecontroller/arduino /Users/badeand/dev/labyrinth/software/gamecontroller/arduino /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug /Users/badeand/dev/labyrinth/software/gamecontroller/arduino/cmake-build-debug/CMakeFiles/Z_DUMMY_TARGET.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Z_DUMMY_TARGET.dir/depend
