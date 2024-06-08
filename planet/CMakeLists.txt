add_subdirectory(src)

target_include_directories(${HELLO_LIB_NAME} PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
)

add_custom_command(
    OUTPUT ${HEADER_DIRECTORY}/hello.h
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/inc/hello.h ${HEADER_DIRECTORY}/hello.h
    DEPENDS ${HELLO_LIB_NAME}
)

add_custom_target(
    COPY_HELLO_HEADER
    DEPENDS ${HEADER_DIRECTORY}/hello.h
)