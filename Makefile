build_directory := __build

# Compiler
CC := gcc

# Compiler flags
CFLAGS := -g -std=c11 -Wall

all: hello

clean_build:
	rm -rf $(build_directory)

create_build_directory: clean_build
	mkdir -p $(build_directory)

create_hello_earth_object_file: create_build_directory
	$(CC) $(CFLAGS) -c src/earth/hello_earth.c -o $(build_directory)/hello_earth.o

create_hello_jupiter_object_file: create_build_directory
	$(CC) $(CFLAGS) -c src/jupiter/hello_jupiter.c -o $(build_directory)/hello_jupiter.o

create_hello_earth_static_library: create_hello_earth_object_file
	ar rcs $(build_directory)/hello_earth.a $(build_directory)/hello_earth.o

create_hello_jupiter_static_library: create_hello_jupiter_object_file
	ar rcs $(build_directory)/hello_jupiter.a $(build_directory)/hello_jupiter.o

hello: create_hello_earth_static_library create_hello_jupiter_static_library
	$(CC) $(CFLAGS) -I src/earth -I src/jupiter -o $(build_directory)/hello main.c $(build_directory)/hello_earth.a $(build_directory)/hello_jupiter.a