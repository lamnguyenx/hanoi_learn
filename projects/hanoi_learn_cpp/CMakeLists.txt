cmake_minimum_required(VERSION 3.20)
project(cpp)

message(STATUS "C++ Compiler: ${CMAKE_CXX_COMPILER}")
message(STATUS "C Compiler: ${CMAKE_C_COMPILER}")

# Check if CONDA_PREFIX is set
if(DEFINED ENV{CONDA_PREFIX})
  set(CONDA_INCLUDE_DIR $ENV{CONDA_PREFIX}/include)
  include_directories(${CONDA_INCLUDE_DIR})
else()
  message(
    WARNING "CONDA_PREFIX is not defined.\n"
            "Make sure you have activated your Conda environment.\n"
            "You can activate it using:\n"
            "  conda activate your_environment_name")
endif()

# Standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Specify the source files
set(SOURCES src/main.cpp)
include_directories(src)

find_package(fmt)
target_link_libraries(fmt::fmt)

find_package(nlohmann_json 3.2.0 REQUIRED)
target_link_libraries(nlohmann_json::nlohmann_json)


# Create the executable
add_executable(out ${SOURCES})
