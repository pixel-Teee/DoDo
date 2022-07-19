cmake_minimum_required(VERSION 3.20)

project(DoDoEditor)

file(GLOB DoDoSource
"Editor/*.h"
"Editor/*.cpp"
)

if(MSVC)
	source_group(TREE ${CMAKE_SOURCE_DIR}/DoDoEditor FILES ${DoDoSource})
endif()

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/${PROJECT_NAME})

add_executable(DoDoEditor ${DoDoSource})

# target_link_libraries needs to be in the add_executable's back
target_link_libraries(DoDoEditor PRIVATE DoDo)

target_include_directories(DoDoEditor
PRIVATE
"../DoDo/Source")

if(MSVC)
target_compile_definitions(DoDoEditor
PRIVATE DODO_PLATFORM_WINDOWS
DODO_DYNAMIC_LINK)
endif()
