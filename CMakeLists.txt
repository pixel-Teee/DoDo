cmake_minimum_required(VERSION 3.18)

project(DoDo)

add_subdirectory(DoDo)

if(USE_EDITOR)
    add_subdirectory(DoDoEditor)
endif()

target_compile_features(DoDo
PUBLIC cxx_std_17)
