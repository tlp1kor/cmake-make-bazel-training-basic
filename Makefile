clean_build:
	rm -rf __build

create_build_directory: clean_build
	mkdir -p __build

create_hello_earth_object_file: create_build_directory
	gcc -c src/earth/hello_earth.c -o __build/hello_earth.o

create_hello_jupiter_object_file: create_build_directory
	gcc -c src/jupiter/hello_jupiter.c -o __build/hello_jupiter.o

create_hello_earth_static_library: create_hello_earth_object_file
	ar rcs __build/hello_earth.a __build/hello_earth.o

create_hello_jupiter_static_library: create_hello_jupiter_object_file
	ar rcs __build/hello_jupiter.a __build/hello_jupiter.o

hello: create_hello_earth_static_library create_hello_jupiter_static_library
	gcc -I src/earth -I src/jupiter -o __build/hello main.c __build/hello_earth.a __build/hello_jupiter.a