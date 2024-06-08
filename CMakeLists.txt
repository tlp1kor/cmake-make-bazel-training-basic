cmake_minimum_required(VERSION 3.16)

project(HELLO_WORLD VERSION 0.0.1 LANGUAGES C)

set(HEADER_DIRECTORY ${CMAKE_BINARY_DIR}/headers)
set(MAIN_SRC ${CMAKE_SOURCE_DIR}/main.c)

add_subdirectory(src)

add_executable(hello ${MAIN_SRC})

add_dependencies(hello COPY_EARTH_HEADER COPY_JUPITER_HEADER)

target_link_libraries(hello earth jupiter)

target_include_directories(hello PRIVATE 
    ${HEADER_DIRECTORY}
)