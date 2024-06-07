cmake_minimum_required(VERSION 3.16)

project(HELLO_WORLD VERSION 0.0.1 LANGUAGES C)

add_executable(hello main.c src/earth/hello_earth.c src/jupiter/hello_jupiter.c)

target_include_directories(hello PRIVATE src/earth src/jupiter)