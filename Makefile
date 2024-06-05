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

