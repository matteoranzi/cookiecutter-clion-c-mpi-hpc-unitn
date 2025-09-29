#!/bin/bash

WORKING_DIRECTORY="/home/{{ cookiecutter.unitn_username }}/{{ cookiecutter.remote_project_path }}/{{ cookiecutter.project_name }}"
cd "$WORKING_DIRECTORY" || exit

source ./pbs/job.config

job_id=$(qsub  -o /dev/null -e /dev/null -l select=${CHUNKS}:ncpus=${N_CPUS}:mem=${MEMORY} -l walltime=${WALLTIME} -q ${QUEUE_TYPE} "${WORKING_DIRECTORY}/pbs/run.pbs")
echo "JOB_ID: ${job_id}"

numeric_job_id="${job_id%%.*}"
mkdir -p "./pbs/logs/${numeric_job_id}"
cp "./pbs/job.config" "./pbs/logs/${numeric_job_id}/job_config.log"
echo "${job_id}" > ./pbs/logs/last_job/job_id
