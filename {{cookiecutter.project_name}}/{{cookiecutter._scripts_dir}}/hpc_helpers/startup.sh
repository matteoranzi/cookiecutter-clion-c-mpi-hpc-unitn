#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"

alias lastout="${WORKING_DIRECTORY}/{{cookiecutter._scripts_dir}}/hpc_helpers/lastOutput.sh"
alias lasterr="${WORKING_DIRECTORY}/{{cookiecutter._scripts_dir}}/hpc_helpers/lastError.sh"
alias laststat="${WORKING_DIRECTORY}/{{cookiecutter._scripts_dir}}/hpc_helpers/lastStat.sh"
