#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

LAST_JOB_ID="$(cat ./{{cookiecutter._hpc_executions_dir}}/logs/last_job/job_id)"
LAST_ERROR_FILE="./{{cookiecutter._hpc_executions_dir}}/logs/${LAST_JOB_ID}/err.log"

printf "\n==========================================================\n"
printf "STDERR OF JOB: %s" "${LAST_JOB_ID}"
printf "\n==========================================================\n\n"

cat "${LAST_ERROR_FILE}"
