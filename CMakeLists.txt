cmake_minimum_required(VERSION 3.16)

project(HELLO_WORLD VERSION 0.0.1 LANGUAGES C)

# Setting up variables
set(EARTH_SRC ${CMAKE_SOURCE_DIR}/src/earth/hello_earth.c)
set(JUPITER_SRC ${CMAKE_SOURCE_DIR}/src/jupiter/hello_jupiter.c)
set(MAIN_SRC ${CMAKE_SOURCE_DIR}/main.c)

add_library(earth ${EARTH_SRC})
add_library(jupiter ${JUPITER_SRC})

add_executable(hello ${MAIN_SRC})
target_link_libraries(hello earth jupiter)
target_include_directories(hello PRIVATE 
    ${CMAKE_SOURCE_DIR}/src/earth 
    ${CMAKE_SOURCE_DIR}/src/jupiter
)
${CMAKE_BINARY_DIR}