#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

alias lastout="./{{cookiecutter._scripts_dir}}/hpc_helpers/lastOutput.sh"
alias lasterr="./{{cookiecutter._scripts_dir}}/hpc_helpers/lastError.sh"
alias laststat="./{{cookiecutter._scripts_dir}}/hpc_helpers/lastStat.sh"
