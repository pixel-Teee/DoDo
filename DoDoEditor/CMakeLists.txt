cmake_minimum_required(VERSION 3.5)

project(DoDoEditor)

file(GLOB DoDoSource
"Editor/*.h"
"Editor/*.cpp"
)

if(MSVC)
	source_group(TREE ${CMAKE_SOURCE_DIR}/DoDoEditor FILES ${DoDoSource})
endif()

add_executable(DoDoEditor ${DoDoSource})

# target_link_libraries needs to be in the add_executable's back
target_link_libraries(DoDoEditor PRIVATE DoDo)

target_include_directories(DoDoEditor
PRIVATE
"../DoDo/Source")
