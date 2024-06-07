cmake_minimum_required(VERSION 3.16)

project(HELLO_WORLD VERSION 0.0.1 LANGUAGES C)

add_library(earth src/earth/hello_earth.c)
add_library(jupiter src/jupiter/hello_jupiter.c)

add_executable(hello main.c)
target_link_libraries(hello earth jupiter)
target_include_directories(hello PRIVATE src/earth src/jupiter)