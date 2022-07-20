cmake_minimum_required(VERSION 3.20)

project(DoDo)

add_subdirectory(DoDoEditor)
add_subdirectory(DoDo)

target_compile_features(DoDo
PUBLIC cxx_std_17)
