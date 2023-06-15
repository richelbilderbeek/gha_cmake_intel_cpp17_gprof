cmake_minimum_required(VERSION 3.10)

project(gha_cmake_intel_cpp17_gprof)

set(CMAKE_CXX_STANDARD 17)

# gprof
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg")
set(CMAKE_LFLAGS "${CMAKE_LFLAGS} -pg")

set(CMAKE_CXX_STANDARD 17)

add_executable(gha_cmake_intel_cpp17_gprof main.cpp)


