#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

alias lastOutput="./pbs/helpers/lastOutput.sh"
alias lastError="./pbs/helpers/lastError.sh"
alias lastStat="./pbs/helpers/lastStat.sh"
