#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

alias lastout="./pbs/helpers/lastOutput.sh"
alias lasterr="./pbs/helpers/lastError.sh"
alias laststat="./pbs/helpers/lastStat.sh"
