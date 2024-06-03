To Do: Compile with multiple .c and .h files in different directory using "-I" option to help locate all .h files

Run the following command:
>  gcc -I src/earth -I src/jupiter -o hello main.c src/earth/hello_earth.c src/jupiter/hello_jupiter.c

To Test binary:
> ./hello