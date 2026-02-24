add_executable(app
        src/main.cpp
)

target_link_libraries(app PRIVATE framework)
target_include_directories(app PRIVATE include)

if(MSVC)
    target_compile_options(app PRIVATE /W4 /permissive- /external:W0)
    if(ADD_ASAN)
        target_compile_options(app PRIVATE /fsanitize=address)
        target_link_options(app PRIVATE /fsanitize=address)
    endif()
else()
    target_compile_options(app PRIVATE -Wall -Wextra -pedantic)
    if(ADD_ASAN)
        target_compile_options(app PRIVATE -fsanitize=address)
        target_link_options(app PRIVATE -fsanitize=address)
    endif()
endif()

add_custom_command(TARGET app PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_CURRENT_SOURCE_DIR}/resources ${CMAKE_CURRENT_BINARY_DIR}/resources)