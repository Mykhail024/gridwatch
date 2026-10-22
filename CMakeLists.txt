cmake_minimum_required(VERSION 4.3 FATAL_ERROR)

project(
  gridwatch
  VERSION 0.0.1 SPDX_LICENSE "GPL-3.0"
  DESCRIPTION "Power outage schedule monitor"
  LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_COLOR_DIAGNOSTICS ON)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic-errors -Werror")
set(CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g3 -fno-omit-frame-pointer")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O2")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/app/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/app/lib)

find_package(CURL REQUIRED)
find_package(nlohmann_json CONFIG REQUIRED)

add_subdirectory(core)
add_subdirectory(cli)
