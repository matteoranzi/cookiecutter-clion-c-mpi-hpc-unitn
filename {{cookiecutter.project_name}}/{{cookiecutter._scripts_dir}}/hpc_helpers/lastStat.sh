#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

LAST_JOB_ID="$(cat ./{{cookiecutter._hpc_executions_dir}}/logs/last_job/job_id)"

qstat ${LAST_JOB_ID}