project(Server)

# Find required Qt components
find_package(Qt6 REQUIRED COMPONENTS Core Network)

# Add server source files
set(SERVER_SOURCES
    src/server.cpp
    src/DeviceServer.cpp
)

set(SERVER_HEADERS
    src/DeviceServer.h
)

qt_wrap_cpp(SERVER_MOCS ${SERVER_HEADERS})

# Build the server executable
add_executable(Server ${SERVER_SOURCES} ${SERVER_MOCS})

# Link Qt libraries
target_link_libraries(Server PRIVATE Qt6::Core Qt6::Network)

