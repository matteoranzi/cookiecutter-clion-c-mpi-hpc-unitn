#!/bin/zsh
mpiexec -n 5 "$(dirname "$0")/../../cmake-build-debug-local/{{ cookiecutter.project_name }}"
