cmake_minimum_required(VERSION 3.5)

project(DoDo)

file(GLOB_RECURSE DoDoSource
"Source/EntryPoint/*.h"
"Source/EntryPoint/*.cpp"
"Source/Application/*.h"
"Source/Application/*.cpp")

source_group(TREE ${CMAKE_SOURCE_DIR}/DoDo FILES ${DoDoSource})

add_library(DoDo STATIC ${DoDoSource})