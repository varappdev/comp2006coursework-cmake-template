find_package(SDL2 CONFIG REQUIRED)
find_package(SDL2_image CONFIG REQUIRED)
find_package(SDL2_ttf CONFIG REQUIRED)

add_library(framework
        CourseworkBase/src/framework/BaseEngine.cpp
        CourseworkBase/src/framework/DisplayableObject.cpp
        CourseworkBase/src/framework/DrawingSurface.cpp
        CourseworkBase/src/framework/FontManager.cpp
        CourseworkBase/src/framework/SimpleImage.cpp
        CourseworkBase/src/framework/TileManager.cpp
)

target_include_directories(framework SYSTEM PUBLIC CourseworkBase/include/framework CourseworkBase) # for header.h

target_link_libraries(framework PUBLIC
        $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
        $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
        $<IF:$<TARGET_EXISTS:SDL2_image::SDL2_image>,SDL2_image::SDL2_image,SDL2_image::SDL2_image-static>
        $<IF:$<TARGET_EXISTS:SDL2_ttf::SDL2_ttf>,SDL2_ttf::SDL2_ttf,SDL2_ttf::SDL2_ttf-static>
)