project(core)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIR})

add_executable(core main.cpp)
target_link_libraries(core ${SDL2_LIBRARY})
install(TARGETS core RUNTIME DESTINATION ${BIN_DIR})
