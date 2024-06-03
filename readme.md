To Do: Compile with multiple .c and .h files in different directory using static libraries

Run the following command:
>  mkdir -p __build
>  gcc -c src/earth/hello_earth.c -o __build/hello_earth.o
>  ar rcs __build/hello_earth.a __build/hello_earth.o
>  gcc -c src/earth/hello_jupiter.c -o __build/hello_jupiter.o
>  ar rcs __build/hello_jupiter.a __build/hello_jupiter.o
>  gcc -I src/earth -I src/jupiter -o __build/hello main.c __build/hello_earth.a __build/hello_jupiter.a

To Test binary:
> ./__build/hello