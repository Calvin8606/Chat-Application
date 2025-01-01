# Chat Application

## Overview
This is a simple chat application that allows multiple clients to connect to a central server and exchange messages in real time. It is built using C++ and Qt framework, providing a graphical user interface (GUI) for the clients to communicate.

---

## Features
- **Real-time Messaging**: Clients can send and receive messages in real time.
- **User List**: Displays a list of all connected users.
- **Message History**: Displays chat history for all clients when they join.
- **Server-Client Architecture**: A single server handles multiple clients simultaneously.
- **Cross-Platform Compatibility**: Can run on any platform supported by Qt.

---

## Tools Used
- **C++**: Core programming language used to build the application.
- **Qt Framework**: Used for GUI development and networking (QTcpSocket and QTcpServer).
- **CMake**: Build system to manage the build process.
- **Git**: Version control for managing code changes.
- **GitHub**: Repository hosting service.

---

## Directory Structure
```
.
├── CMakeLists.txt         # Main CMake file
├── Client
│   ├── CMakeLists.txt     # CMake file for client
│   └── src
│       ├── ChatWindow.cpp # Client GUI implementation
│       ├── ChatWindow.h
│       ├── LoginWindow.cpp
│       ├── LoginWindow.h
│       ├── Window.cpp     # Manages login and chat windows
│       ├── Window.h
│       └── main.cpp       # Entry point for client
├── Server
│   ├── CMakeLists.txt     # CMake file for server
│   └── src
│       ├── DeviceServer.cpp # Server implementation
│       ├── DeviceServer.h
│       └── server.cpp      # Entry point for server
├── build-debug            # Debug build directory (ignored in .gitignore)
├── build-release          # Release build directory (ignored in .gitignore)
└── .gitignore             # Git ignore file
```

---

## How to Run

### Prerequisites
1. Install [CMake](https://cmake.org/download/).
2. Install a C++ compiler (e.g., GCC, Clang, or MSVC).
3. Clone the repository:
   ```bash
   git clone https://github.com/Calvin8606/Chat-Application.git
   cd Chat-Application
   ```

### Building the Project

#### Debug Build
1. Create a `build-debug` directory:
   ```bash
   mkdir build-debug
   cd build-debug
   ```
2. Configure the build using CMake:
   ```bash
   cmake -DCMAKE_BUILD_TYPE=Debug ..
   ```

#### Release Build
1. Create a `build-release` directory:
   ```bash
   mkdir build-release
   cd build-release
   ```
2. Configure the build using CMake:
   ```bash
   cmake -DCMAKE_BUILD_TYPE=Release ..
   ```

### Running the Application

#### Starting the Server
1. Navigate to the server build directory:
   ```bash
   cd build-debug/Server
   ```
2. Run the server:
   ```bash
   ./Server
   ```

#### Starting the Client
1. Navigate to the client build directory:
   ```bash
   cd build-debug/Client
   ```
2. Run the client:
   ```bash
   ./Client
   ```
3. Enter your username and the server's IP address and port to connect.
   The default port for the application is 8080.
---

## Future Enhancements
- **Authentication**: Add user login and authentication.
- **Encryption**: Secure messages using SSL/TLS.
- **File Sharing**: Enable file transfer between clients.
- **Individual Selected**: Add support for selecting individual chats.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.



