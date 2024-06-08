add_subdirectory(src)

target_include_directories(${DISTANCE_LIB_NAME} PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
)

add_custom_command(
    OUTPUT ${HEADER_DIRECTORY}/distance.h
    COMMAND cp ${CMAKE_CURRENT_SOURCE_DIR}/inc/distance.h ${HEADER_DIRECTORY}/distance.h
    DEPENDS ${DISTANCE_LIB_NAME}
)

add_custom_target(
    COPY_DISTANCE_HEADER
    DEPENDS ${HEADER_DIRECTORY}/distance.h
)
