# Specify the C and C++ compilers
set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_CXX_COMPILER /usr/bin/clang++)

# Set the architecture flags (optional, depending on your target)
set(CMAKE_C_FLAGS "-march=native")
set(CMAKE_CXX_FLAGS "-march=native")

# Specify additional flags (optional)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

# Set the system name (optional, useful for cross-compiling)
set(CMAKE_SYSTEM_NAME Linux)

# Specify the target system processor (optional, useful for cross-compiling)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# Optional: Set the C++ standard (e.g., C++11, C++14, C++17, C++20)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Optional: Set the C standard (e.g., C99, C11)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)
