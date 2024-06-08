execute_process(
    COMMAND mkdir -p ${HEADER_DIRECTORY}
)

# Above execute_process could also be written as:
# file(MAKE_DIRECTORY ${HEADER_DIRECTORY})

add_subdirectory(earth)
add_subdirectory(jupiter)