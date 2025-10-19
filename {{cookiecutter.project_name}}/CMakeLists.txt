cmake_minimum_required(VERSION 3.15.4)
project({{ cookiecutter.project_name }} C)

set(CMAKE_C_STANDARD 11)

add_executable({{ cookiecutter.project_name }} {{cookiecutter._src_dir}}/main.c)

# Option to select configs - set via cmake -DREMOTE_RUN [ON/OFF]
option(REMOTE_RUN "Build for remote run" OFF)

target_include_directories(BM_p2p_comm PRIVATE ${CMAKE_SOURCE_DIR}/include)

# Link against MPI
find_package(MPI REQUIRED)
target_link_libraries({{ cookiecutter.project_name }} PRIVATE MPI::MPI_C)