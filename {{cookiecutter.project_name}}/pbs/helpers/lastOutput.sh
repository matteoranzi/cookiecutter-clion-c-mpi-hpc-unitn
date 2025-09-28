#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

LAST_JOB_ID="$(cat ./pbs/logs/last_job/job_id)"
LAST_OUTPUT_FILE="./pbs/logs/${LAST_JOB_ID}/out.log"

printf "\n==========================================================\n"
printf "STDOUT OF JOB: %s" "${LAST_JOB_ID}"
printf "\n==========================================================\n\n"

cat "${LAST_OUTPUT_FILE}"
