add_library(power-core STATIC)
add_library(GridWatch::Core ALIAS power-core)

target_include_directories(power-core PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/src")

target_link_libraries(power-core PRIVATE CURL::libcurl
                                         nlohmann_json::nlohmann_json)
