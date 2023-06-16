# gha_cmake_intel_cpp17_gprof

Branch   |[![GitHub Actions logo](pics/GitHubActions.png)](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17_gprof/actions)
---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Check build](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17_gprof/actions/workflows/check_build.yml/badge.svg?branch=master)](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17_gprof/actions/workflows/check_build.yml)
`develop`|[![Check build](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17_gprof/actions/workflows/check_build.yml/badge.svg?branch=develop)](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17_gprof/actions/workflows/check_build.yml)

The goal of this project is to have a clean GitHub Actions build, with specs:

 * Build system: `CMake`
 * C++ compiler: Intel
 * C++ version: `C++17`
 * Libraries: `STL` only
 * Code coverage: none
 * Profiling: `gprof`
 * Source: one single file, `main.cpp`

More complex builds:

 * None

Equally complex builds:

 * Use `clang` (instead of Intel) compiler: [gha_cmake_clang_cpp17_gprof](https://github.com/richelbilderbeek/gha_cmake_clang_cpp17_gprof)
 * Use `g++` (instead of Intel) compiler: [gha_cmake_gcc_cpp17_gprof](https://github.com/richelbilderbeek/gha_cmake_gcc_cpp17_gprof)

Less complex builds:

 * No `gprof`: [gha_cmake_intel_cpp17](https://github.com/richelbilderbeek/gha_cmake_intel_cpp17)
 
