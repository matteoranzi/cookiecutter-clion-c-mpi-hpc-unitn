cmake_minimum_required(VERSION 3.15.4)
project({{ cookiecutter.project_name }} C)

set(CMAKE_C_STANDARD 11)

add_executable({{ cookiecutter.project_name }} src/main.c
        include/debug.h)

# Link against MPI
find_package(MPI REQUIRED)
target_link_libraries({{ cookiecutter.project_name }} PRIVATE MPI::MPI_C)