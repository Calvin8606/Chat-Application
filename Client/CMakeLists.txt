# Client-specific build configuration
project(Client)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets Network)

# Add client source files
set(CLIENT_SOURCES
    src/main.cpp
    src/Window.cpp
    src/LoginWindow.cpp
    src/ChatWindow.cpp
)

set(CLIENT_HEADERS
    src/Window.h
    src/LoginWindow.h
    src/ChatWindow.h
)

qt_wrap_cpp(CLIENT_MOCS ${CLIENT_HEADERS})

# Build the client executable
qt_add_executable(Client ${CLIENT_SOURCES} ${CLIENT_MOCS})

# Link Qt libraries
target_link_libraries(Client PRIVATE Qt6::Core Qt6::Gui Qt6::Widgets Qt6::Network)
