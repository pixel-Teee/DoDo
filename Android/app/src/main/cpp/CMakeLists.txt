cmake_minimum_required(VERSION 3.18.1)

project(DoDo)

set(DoDoSourceDir ../../../../../DoDo)

message(${DoDoSourceDir})

file(GLOB_RECURSE DoDoSource
"${DoDoSourceDir}/Source/dodo.h"
"${DoDoSourceDir}/Source//dodopch.h"
"${DoDoSourceDir}/Source//dodopch.cpp"
"${DoDoSourceDir}/Source/EntryPoint/*.h"
"${DoDoSourceDir}/Source/EntryPoint/*.cpp"
"${DoDoSourceDir}/Source/Application/*.h"
"${DoDoSourceDir}/Source/Application/*.cpp"
"${DoDoSourceDir}/Source/Core/*.h"
"${DoDoSourceDir}/Source/Core/*.cpp")

add_library(
        DoDo
        SHARED
        ${DoDoSource})

target_precompile_headers(DoDo
        PUBLIC "${DoDoSourceDir}/Source/dodopch.h")

find_library(
        log-lib
        log)

target_link_libraries(
        DoDo
        ${log-lib})