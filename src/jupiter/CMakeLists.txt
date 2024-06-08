add_library(jupiter STATIC hello_jupiter.c)

add_custom_command(
    OUTPUT ${HEADER_DIRECTORY}/hello_jupiter.h
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/hello_jupiter.h ${HEADER_DIRECTORY}/hello_jupiter.h
    DEPENDS jupiter
)

add_custom_target(COPY_JUPITER_HEADER
    DEPENDS ${HEADER_DIRECTORY}/hello_jupiter.h
)