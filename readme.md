To Do: Compile with multiple .c and .h files in different directory using "target_include_directories" option to help locate all .h files using CMake

Run the following command:
>  mkdir __build

>  cmake -B __build

>  cmake --build ./__build

To Test binary:
> ./__build/hello