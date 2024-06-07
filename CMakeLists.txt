cmake_minimum_required(VERSION 3.16)

project(HELLO_WORLD VERSION 0.0.1 LANGUAGES C)

add_subdirectory(src)

add_executable(hello main.c)
target_link_libraries(hello earth jupiter)
target_include_directories(hello PRIVATE 
    ${CMAKE_SOURCE_DIR}/src/earth 
    ${CMAKE_SOURCE_DIR}/src/jupiter
)