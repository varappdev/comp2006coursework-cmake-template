add_executable(demos
        CourseworkBase/mainfunction.cpp

        CourseworkBase/src/demos/BouncingBall.cpp
        CourseworkBase/src/demos/BouncingBallMain.cpp
        CourseworkBase/src/demos/MazeDemoMain.cpp
        CourseworkBase/src/demos/MazeDemoObject.cpp
        CourseworkBase/src/demos/MazeDemoTileManager.cpp
        CourseworkBase/src/demos/SimpleDemo.cpp

        CourseworkBase/src/demos/advanced/DraggingDemo.cpp
        CourseworkBase/src/demos/advanced/FlashingDemo.cpp
        CourseworkBase/src/demos/advanced/ImageMappingDemo.cpp
        CourseworkBase/src/demos/advanced/StarfieldDemo.cpp
        CourseworkBase/src/demos/advanced/ZoomingDemo.cpp
)

target_link_libraries(demos PRIVATE framework)

target_include_directories(demos PRIVATE CourseworkBase/include/demos CourseworkBase/include/demos/advanced)