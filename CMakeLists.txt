cmake_minimum_required(VERSION 3.16)

project(SOLAR_SYSTEM VERSION 0.0.1 LANGUAGES C)

set(HEADER_DIRECTORY ${CMAKE_BINARY_DIR}/headers)
set(MAIN_SRC ${CMAKE_SOURCE_DIR}/main.c)
set(MAIN_TARGET_NAME solar_system)
set(HELLO_LIB_NAME hello_print)
set(DISTANCE_LIB_NAME hello_distance)

message(STATUS "Building ${VARIANT} variant")
file(MAKE_DIRECTORY ${HEADER_DIRECTORY})

if(VARIANT STREQUAL "earth")
    add_definitions(-DVARIANT_EARTH)
elseif(VARIANT STREQUAL "jupiter")
    add_definitions(-DVARIANT_JUPITER)
else()
    message(FATAL_ERROR "Unknown variant Passed")
endif()

add_subdirectory(planet)
add_subdirectory(distance)

add_executable(${MAIN_TARGET_NAME} ${MAIN_SRC})

add_dependencies(${MAIN_TARGET_NAME} COPY_HELLO_HEADER COPY_DISTANCE_HEADER)

# target_link_libraries(${MAIN_TARGET_NAME} ${HELLO_LIB_NAME} ${DISTANCE_LIB_NAME})
target_link_libraries(${MAIN_TARGET_NAME} hello_print hello_distance)

target_include_directories(${MAIN_TARGET_NAME} PUBLIC 
    ${HEADER_DIRECTORY}
)