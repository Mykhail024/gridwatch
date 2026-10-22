add_executable(power-cli)
add_executable(GridWatch::CLI ALIAS power-cli)

target_sources(power-cli PRIVATE src/main.cpp)

target_include_directories(power-cli PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/src")

target_link_libraries(power-cli PRIVATE GridWatch::Core
                                        nlohmann_json::nlohmann_json)
