cmake_minimum_required(VERSION 3.18)

project(DoDo)

file(GLOB_RECURSE DoDoSource
"Source/dodo.h"
"Source/dodopch.h"
"Source/dodopch.cpp"
"Source/DoDo/EntryPoint/*.h"
"Source/DoDo/EntryPoint/*.cpp"
"Source/DoDo/Application/*.h"
"Source/DoDo/Application/*.cpp"
"Source/DoDo/Core/*.h"
"Source/DoDo/Core/*.cpp")

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

message(${PROJECT_SOURCE_DIR})

