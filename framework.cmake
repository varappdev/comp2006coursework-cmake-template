find_package(SDL3 CONFIG REQUIRED)
find_package(SDL3_image CONFIG REQUIRED)
find_package(SDL3_ttf CONFIG REQUIRED)

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
        $<TARGET_NAME_IF_EXISTS:SDL3::SDL2main>
        $<IF:$<TARGET_EXISTS:SDL3::SDL3>,SDL3::SDL3,SDL3::SDL3-static>
        $<IF:$<TARGET_EXISTS:SDL3_image::SDL3_image>,SDL3_image::SDL3_image,SDL3_image::SDL3_image-static>
        $<IF:$<TARGET_EXISTS:SDL3_ttf::SDL3_ttf>,SDL3_ttf::SDL3_ttf,SDL3_ttf::SDL3_ttf-static>
)