To Do: Compile with multiple .c and .h files in different directory using static libraries with the help of multi level CMake files.

Some CMake Functions used:

> add_subdirectory: This function adds a sub-directory to the build. The CMakeLists.txt file in that subdirectory will be processed immediately by CMake before processing the rest of the current CMakeLists.txt file.

> add_custom_command: This function adds a custom build rule to the build system. It defines a command that generates specified OUTPUT files.

> add_custom_target: This function adds a target with no output so it always be considered out of date. A common use is to have a target that is always out of date, so it will always run.

> execute_process: This function in CMake is used to execute a process during the configuration phase, not during the build phase. This is in contrast to add_custom_command and add_custom_target, which add commands to be executed during the build phase.

Run the following command:
>  cmake -B __build .

>  cmake --build ./__build

To Test binary:
> ./__build/hello