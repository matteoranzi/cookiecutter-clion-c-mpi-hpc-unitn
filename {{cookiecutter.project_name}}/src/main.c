/***********************************************************************************************************************
* Project: {{ cookiecutter.project_name }}
* Author : {{ cookiecutter.author_name }}
* Description: {{ cookiecutter.project_description }}
***********************************************************************************************************************/

#include <stdio.h>
#include <mpi.h>

/*
===========================================================
 Debug Configuration
-----------------------------------------------------------
 Available log levels (set DEBUG_LEVEL to one):
    DEBUG_LEVEL_NONE   → disable all logs
    DEBUG_LEVEL_ERROR  → show only errors
    DEBUG_LEVEL_WARN   → show warnings and errors
    DEBUG_LEVEL_INFO   → show info, warnings, and errors

 Available log macros (use in code):
    DEBUG_ERROR(...)  → log an error message
    DEBUG_WARN(...)   → log a warning message
    DEBUG_INFO(...)   → log an info message
===========================================================
*/
#define DEBUG_LEVEL DEBUG_LEVEL_INFO
#include "../include/debug.h"

int main(void) {
    int comm_size;
    int my_rank;

    MPI_Init(NULL, NULL);

    MPI_Comm_size(MPI_COMM_WORLD, &comm_size);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

    DEBUG_INFO("Hello {{ cookiecutter.project_name }} from: %d\n", my_rank);

    MPI_Finalize();

    return 0;
}


// =================================================================
//  Generated with Matteo Ranzi’s CLion C/MPI HPC Template
//  Kickstart C projects with MPI + HPC@UNITN remote deployment
// =================================================================
