cmake_minimum_required(VERSION 3.31.3)
project(CalChat)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Enable Debug and Release builds
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# Add subdirectories for Client and Server
add_subdirectory(Client)
add_subdirectory(Server)

