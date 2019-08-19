cmake_minimum_required(VERSION 3.13)
project(stacktrace_error)

set(CMAKE_CXX_STANDARD 14)

find_package(Boost COMPONENTS system REQUIRED)

add_executable(stacktrace_error main.cpp)

target_include_directories(stacktrace_error PRIVATE ${Boost_INCLUDE_DIRS})
target_link_libraries(stacktrace_error PRIVATE ${Boost_LIBRARIES})