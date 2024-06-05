BUILD_DIR := __build

# Compiler
CC := gcc

# Compiler flags
CFLAGS := -g -std=c11 -Wall

# Targets
TARGET := hello
LIB1 := $(BUILD_DIR)/hello_earth.a
LIB2 := $(BUILD_DIR)/hello_jupiter.a

# Source Files
MAIN_SRC := main.c
LIB1_SRC := $(wildcard src/earth/*.c)
LIB2_SRC := $(wildcard src/jupiter/*.c)

all: $(BUILD_DIR)/$(TARGET)

clean_build:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR): clean_build
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/hello_earth.o: $(LIB1_SRC) $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/hello_jupiter.o: $(LIB2_SRC) $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIB1): $(BUILD_DIR)/hello_earth.o
	ar rcs $@ $<

$(LIB2): $(BUILD_DIR)/hello_jupiter.o
	ar rcs $@ $<

$(BUILD_DIR)/$(TARGET): $(MAIN_SRC) $(LIB1) $(LIB2)
	$(CC) $(CFLAGS) -I src/earth -I src/jupiter -o $@ $^

# create_build_directory: clean_build
# 	mkdir -p $(build_directory)

# create_hello_earth_object_file: create_build_directory
# 	$(CC) $(CFLAGS) -c src/earth/hello_earth.c -o $(build_directory)/hello_earth.o

# create_hello_jupiter_object_file: create_build_directory
# 	$(CC) $(CFLAGS) -c src/jupiter/hello_jupiter.c -o $(build_directory)/hello_jupiter.o

# create_hello_earth_static_library: create_hello_earth_object_file
# 	ar rcs $(build_directory)/hello_earth.a $(build_directory)/hello_earth.o

# create_hello_jupiter_static_library: create_hello_jupiter_object_file
# 	ar rcs $(build_directory)/hello_jupiter.a $(build_directory)/hello_jupiter.o

# hello: create_hello_earth_static_library create_hello_jupiter_static_library
# 	$(CC) $(CFLAGS) -I src/earth -I src/jupiter -o $(build_directory)/hello main.c $(build_directory)/hello_earth.a $(build_directory)/hello_jupiter.a