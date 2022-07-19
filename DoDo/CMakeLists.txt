cmake_minimum_required(VERSION 3.20)

project(DoDo)

file(GLOB_RECURSE DoDoSource
"Source/*.h"
"Source/*.cpp"
"DoDo/Source/EntryPoint/*.h"
"DoDo/Source/EntryPoint/*.cpp"
"DoDo/Source/Application/*.h"
"DoDo/Source/Application/*.cpp"
"DoDo/Source/Core/*.h"
"DoDo/Source/Core/*.cpp")

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

# copy dll
add_custom_command(TARGET DoDo POST_BUILD
COMMAND ${CMAKE_COMMAND} -E copy_directory
	$<TARGET_FILE_DIR:DoDo>
	$<TARGET_FILE_DIR:DoDoEditor>)