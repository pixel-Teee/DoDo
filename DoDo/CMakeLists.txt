cmake_minimum_required(VERSION 3.20)

project(DoDo)

file(GLOB_RECURSE DoDoSource
"Source/*.h"
"Source/*.cpp"
"Source/EntryPoint/*.h"
"Source/EntryPoint/*.cpp"
"Source/Application/*.h"
"Source/Application/*.cpp"
"Source/Core/*.h"
"Source/Core/*.cpp")

if(MSVC)
	source_group(TREE ${CMAKE_SOURCE_DIR}/DoDo FILES ${DoDoSource})
endif()

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})

add_library(DoDo SHARED ${DoDoSource})

target_include_directories(DoDo PRIVATE
"Source")

if(MSVC)
target_compile_definitions(DoDo
PRIVATE DODO_PLATFORM_WINDOWS
DODO_DYNAMIC_LINK
DODO_BUILD_DLL)
endif()

target_precompile_headers(DoDo
PUBLIC "Source/dodopch.h")