# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/calvin/Cal-Chat

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/calvin/Cal-Chat/build-debug

# Include any dependencies generated for this target.
include Server/CMakeFiles/Server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Server/CMakeFiles/Server.dir/compiler_depend.make

# Include the progress variables for this target.
include Server/CMakeFiles/Server.dir/progress.make

# Include the compile flags for this target's objects.
include Server/CMakeFiles/Server.dir/flags.make

Server/src/moc_DeviceServer.cpp: /Users/calvin/Cal-Chat/Server/src/DeviceServer.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/calvin/Cal-Chat/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating src/moc_DeviceServer.cpp"
	cd /Users/calvin/Cal-Chat/build-debug/Server/src && /opt/homebrew/opt/qt/share/qt/libexec/moc @/Users/calvin/Cal-Chat/build-debug/Server/src/moc_DeviceServer.cpp_parameters

Server/CMakeFiles/Server.dir/codegen:
.PHONY : Server/CMakeFiles/Server.dir/codegen

Server/CMakeFiles/Server.dir/src/server.cpp.o: Server/CMakeFiles/Server.dir/flags.make
Server/CMakeFiles/Server.dir/src/server.cpp.o: /Users/calvin/Cal-Chat/Server/src/server.cpp
Server/CMakeFiles/Server.dir/src/server.cpp.o: Server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/calvin/Cal-Chat/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Server/CMakeFiles/Server.dir/src/server.cpp.o"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Server/CMakeFiles/Server.dir/src/server.cpp.o -MF CMakeFiles/Server.dir/src/server.cpp.o.d -o CMakeFiles/Server.dir/src/server.cpp.o -c /Users/calvin/Cal-Chat/Server/src/server.cpp

Server/CMakeFiles/Server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/server.cpp.i"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/calvin/Cal-Chat/Server/src/server.cpp > CMakeFiles/Server.dir/src/server.cpp.i

Server/CMakeFiles/Server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/server.cpp.s"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/calvin/Cal-Chat/Server/src/server.cpp -o CMakeFiles/Server.dir/src/server.cpp.s

Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o: Server/CMakeFiles/Server.dir/flags.make
Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o: /Users/calvin/Cal-Chat/Server/src/DeviceServer.cpp
Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o: Server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/calvin/Cal-Chat/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o -MF CMakeFiles/Server.dir/src/DeviceServer.cpp.o.d -o CMakeFiles/Server.dir/src/DeviceServer.cpp.o -c /Users/calvin/Cal-Chat/Server/src/DeviceServer.cpp

Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/DeviceServer.cpp.i"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/calvin/Cal-Chat/Server/src/DeviceServer.cpp > CMakeFiles/Server.dir/src/DeviceServer.cpp.i

Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/DeviceServer.cpp.s"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/calvin/Cal-Chat/Server/src/DeviceServer.cpp -o CMakeFiles/Server.dir/src/DeviceServer.cpp.s

Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o: Server/CMakeFiles/Server.dir/flags.make
Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o: Server/src/moc_DeviceServer.cpp
Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o: Server/CMakeFiles/Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/calvin/Cal-Chat/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o -MF CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o.d -o CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o -c /Users/calvin/Cal-Chat/build-debug/Server/src/moc_DeviceServer.cpp

Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.i"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/calvin/Cal-Chat/build-debug/Server/src/moc_DeviceServer.cpp > CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.i

Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.s"
	cd /Users/calvin/Cal-Chat/build-debug/Server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/calvin/Cal-Chat/build-debug/Server/src/moc_DeviceServer.cpp -o CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.s

# Object files for target Server
Server_OBJECTS = \
"CMakeFiles/Server.dir/src/server.cpp.o" \
"CMakeFiles/Server.dir/src/DeviceServer.cpp.o" \
"CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o"

# External object files for target Server
Server_EXTERNAL_OBJECTS =

Server/Server: Server/CMakeFiles/Server.dir/src/server.cpp.o
Server/Server: Server/CMakeFiles/Server.dir/src/DeviceServer.cpp.o
Server/Server: Server/CMakeFiles/Server.dir/src/moc_DeviceServer.cpp.o
Server/Server: Server/CMakeFiles/Server.dir/build.make
Server/Server: /opt/homebrew/opt/qt/lib/QtNetwork.framework/Versions/A/QtNetwork
Server/Server: /opt/homebrew/opt/qt/lib/QtCore.framework/Versions/A/QtCore
Server/Server: Server/CMakeFiles/Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/calvin/Cal-Chat/build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Server"
	cd /Users/calvin/Cal-Chat/build-debug/Server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Server/CMakeFiles/Server.dir/build: Server/Server
.PHONY : Server/CMakeFiles/Server.dir/build

Server/CMakeFiles/Server.dir/clean:
	cd /Users/calvin/Cal-Chat/build-debug/Server && $(CMAKE_COMMAND) -P CMakeFiles/Server.dir/cmake_clean.cmake
.PHONY : Server/CMakeFiles/Server.dir/clean

Server/CMakeFiles/Server.dir/depend: Server/src/moc_DeviceServer.cpp
	cd /Users/calvin/Cal-Chat/build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/calvin/Cal-Chat /Users/calvin/Cal-Chat/Server /Users/calvin/Cal-Chat/build-debug /Users/calvin/Cal-Chat/build-debug/Server /Users/calvin/Cal-Chat/build-debug/Server/CMakeFiles/Server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Server/CMakeFiles/Server.dir/depend
