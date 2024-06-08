To Do: Compile with multiple .c and .h files in different directory using static libraries with the help of multi level CMake files using Toolchain file.

Toolchain file: A toolchain file in CMake is a script that is used to specify the tools (compilers, linkers, etc.) to use when building a project. It's often used when cross-compiling, i.e., when you're building your project on one machine (the host) to run on a different machine (the target).
To pass an external toolchain file to CMake use the definition CMAKE_TOOLCHAIN_FILE

Run the following command:
To run using GCC compiler:

>  cmake -B __build . -DVARIANT=earth -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain/gcc_toolchain.cmake    OR    cmake -B __build . -DVARIANT=jupiter -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain/gcc_toolchain.cmake

OR

To run using CLang Compiler:

>  cmake -B __build . -DVARIANT=earth -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain/clang_toolchain.cmake    OR    cmake -B __build . -DVARIANT=jupiter -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain/clang_toolchain.cmake

>  cmake --build ./__build

To Test binary:
> ./__build/solar_system