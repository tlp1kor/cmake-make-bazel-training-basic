To Do: Compile with multiple .c and .h files in different directory using static libraries with the help of multi level CMake files.

Some CMake Functions used:

> add_definitions(-D<VARIABLE>): This command in CMake is used to add preprocessor definitions to the compilation of source files. The definitions added will be available as macros in the source code.

> Conditional Statements: In CMake, if, elseif, and else are used to create conditional blocks of code. The syntax is similar to that of many programming languages.

Run the following command:
>  cmake -B __build . -DVARIANT=earth    OR    cmake -B __build . -DVARIANT=jupiter

>  cmake --build ./__build

To Test binary:
> ./__build/solar_system