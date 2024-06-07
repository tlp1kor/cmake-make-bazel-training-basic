To Do: Compile with multiple .c and .h files in different directory using static libraries with the help of CMake.
Use Variables to reuse values.

Example of some predefined CMake variables:
${CMAKE_SOURCE_DIR} --> The path to the top level of the source tree.
${CMAKE_BINARY_DIR} --> The full path to the top level of the current CMake build
${CMAKE_CURRENT_LIST_DIR} --> Full directory of the cmakelist file currently being processed.

Run the following command:
>  cmake -B __build .

>  cmake --build ./__build

To Test binary:
> ./__build/hello