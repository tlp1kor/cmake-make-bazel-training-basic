add_library(earth STATIC hello_earth.c)

add_custom_command(
    OUTPUT ${HEADER_DIRECTORY}/hello_earth.h
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/hello_earth.h ${HEADER_DIRECTORY}/hello_earth.h
    DEPENDS earth
)

add_custom_target(COPY_EARTH_HEADER
    DEPENDS ${HEADER_DIRECTORY}/hello_earth.h
)